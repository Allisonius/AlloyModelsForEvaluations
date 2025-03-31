module androidDeclaration

abstract sig Application{
	// permissions that the application needs
	usesPermissions: set Permission, 
	// permissions required to access components of this application
	appPermissions: set Permission,
	// permissions actually used by this application via calling APIs, obtained using PScout permission mapping 
	APIPermissions: set Permission
}

abstract sig Component{
	app: one Application,
	//a component may have any number of filters, 
	//each one describing a different component's capability
	intentFilter: set IntentFilter,
	// permissions required to access this component -- changed to compPermissions from "permissions"
	compPermissions: set Permission,
	// permissions actually used by this component via calling APIs (and Intents), obtained using PScout permission mapping 
	compUsesPermissions: set Permission
}

// To inform the system which implicit intents they can handle, 
// components can have one or more intent filters.
abstract sig IntentFilter{
	// A filter may list more than one [actions]
	// The list cannot be empty
	actions: some Action,
	data: set Data,	
	// For an intent to pass the category test, every category 
	// in the Intent object must match a category in the filter. 
	// The filter can list additional categories, 
	//but it cannot omit any that are in the intent.
	categories: set Category,
}

abstract sig Activity extends Component{
}

fact{
  // each intent-filter belongs to exactly one component
  //all i:IntentFilter| one i.~intentFilter

  // to improve efficiency of Alloy we reuse repetative 
  all i:IntentFilter| some i.~intentFilter


// Three of the core components of an application, namely
// activities, services, and broadcast receivers, can
// have one or more intent filters.
//To exclude provider from having intent filters, 
//we add a separate fact constraint specification.
  no i:IntentFilter| i.~intentFilter in Provider

}

abstract sig Service extends Component{
}

// broadcast receiver
abstract sig Receiver extends Component{
}

// content provider
abstract sig Provider extends Component{
}


// Elements of an intent:
// Only three attributes of an Intent object are consulted 
// when it is tested against an intent filter:
// Action is a string that names the general action  to be performed.
abstract sig Action{}
// Category is a string containing additional information about the kind of
//component that should handle the intent
abstract sig Category{}
// Data is a tuple consisting of both the URI of the data to be acted on and its MIME media type. 
// This attribute indicates the data to be processed by the action.
abstract sig Data{
	scheme: one Scheme,
	type: one MimeType
}
abstract sig Scheme{}
abstract sig MimeType{}


one sig YesType extends MimeType{}
one sig NoType extends MimeType{}
one sig YesScheme extends Scheme{}
one sig NoScheme extends Scheme{}

one sig NoMimeYesScheme extends Data{}{
	scheme = YesScheme
	type = NoType
}

one sig YesMimeYesScheme extends Data{}{
	scheme = YesScheme
	type = YesType
}

one sig YesMimeNoScheme extends Data{}{
	scheme = NoScheme
	type = YesType
}

one sig NoMimeNoScheme extends Data{}{
	scheme = NoScheme
	type = NoType
}

// An intentFilter should have at least one action, we put this sig here to enable modeling those intentFilters do not have any action. 
one sig NoAction extends Action{}

/*
one sig MAIN extends Action{}
one sig EDIT extends Action{}
one sig VIEW extends Action{}
one sig PICK extends Action{}
one sig INSERT extends Action{}
one sig BOOT_COMPLETED extends Action{}
one sig GET_CONTENT extends Action{}
one sig LAUNCHER extends Category{}
one sig DEFAULT extends Category{}
one sig ALTERNATIVE extends Category{}
one sig SELECTED_ALTERNATIVE extends Category{}
one sig BROWSABLE extends Category{}
*/

abstract sig Intent{
	
	// the component which creates this intent
	sender: one Component,
	// The name of the component that should handle the intent.
	// The component name is optional, and it may lead to an explicit message passing, 
	// should the component is explicitly specified.
	// An explicit intent is always delivered to its target; the filter is not consulted.
	component: lone Component,
	// An intent can contain at most one action (bak:[Each] intent object names just a single action)
	action: lone Action,
	data: set Data,	
	// Any number of category descriptions can be placed in an intent object.
	categories: set Category,
	extra: one Extra
}

abstract sig Extra{}
one sig Yes extends Extra{}
one sig No extends Extra{}

abstract sig Permission{
	//	protectionLevel: one ProtectionLevel
}
//abstract sig ProtectionLevel{}

// For content provider components, there are two separate permission attributes 
//one sig readPermission extends Permission{}
//one sig writePermission extends Permission{}

/*
one sig READ_PHONE_STATE  extends Permission{}
one sig CAMERA  extends Permission{}
one sig INTERNET  extends Permission{}
one sig ACCESS_NETWORK_STATE extends Permission{}
one sig RECEIVE_BOOT_COMPLETED  extends Permission{}
one sig ACCESS_COARSE_LOCATION  extends Permission{}
one sig NFC  extends Permission{}
*/


assert  vulnerableConnection{
		no disj src, dst: Component, intent:Intent| 
				(src in intent.sender) && 
				(dst in intentResolver[intent]) &&
				// The target application has a permission missing in the sender application and not being checked in the target component
				//(some perm: dst.app.usesPermissions | not (perm in src.app.usesPermissions)  && not ((perm in dst.permissions)||(perm in dst.app.appPermissions)))		
				(some perm: dst.compUsesPermissions | not (perm in src.app.usesPermissions)  && not ((perm in dst.compPermissions)||(perm in dst.app.appPermissions)))					
}



assert  vulnerableConnectionOld{
		no disj src, dst: Component, intent:Intent| 
				(src in intent.sender) && //((dst in i.component) || ( dst in potentialICC[i])) &&
				(dst in intentResolver[intent]) &&
				// The target application has a permission missing in the sender application and not being checked in the target component
//				(some perm: dst.app.APIPermissions | not (perm in src.app.usesPermissions)  && not ((perm in dst.permissions)||(perm in dst.app.appPermissions)))						
				(some perm: dst.app.usesPermissions | not (perm in src.app.usesPermissions)  && not ((perm in dst.compPermissions)||(perm in dst.app.appPermissions)))						
}


fun potentialICC(i:Intent): set Component{
	{c:Component| (some f: IntentFilter| f.~intentFilter in c && i.action in f.actions
																&& i.categories in f.categories
																&& (i.data.scheme = f.data.scheme && i.data.type = f.data.type)) }
}


fun intentResolver(i:Intent): set Component{
	{c:Component| 	some i.component 
		implies {c = i.component}
//		the following line is added to reduce false positives, by ignoring intents having specific contents
//		we may want to comment this line later, as the static analysis solves the issue.
//		else { (no i.action and no i.categories and no i.data) implies {c = none}
		else {

					some f: IntentFilter| f.~intentFilter in c && i.action in f.actions
												&& i.categories in f.categories
												&& (i.data.scheme = f.data.scheme && i.data.type = f.data.type) }
   }
// }
}


pred show(){
	some IntentFilter
	some Activity
	some Provider
}
run show for 20
