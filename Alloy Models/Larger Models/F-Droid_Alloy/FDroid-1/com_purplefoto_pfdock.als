open appDeclaration

one sig com_purplefoto_pfdock extends Application{}{
	usesPermissions = ACCESS_COARSE_LOCATION + ACCESS_FINE_LOCATION
	no appPermissions
	APIPermissions = ACCESS_COARSE_LOCATION + ACCESS_FINE_LOCATION
}

one sig com_purplefoto_pfdock_AboutBox extends Activity{}{
	app in com_purplefoto_pfdock
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_purplefoto_pfdock_CarDockReceiver extends Receiver{}{
	app in com_purplefoto_pfdock
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_purplefoto_pfdock_PFDock extends Activity{}{
	app in com_purplefoto_pfdock
	no intentFilter
	no compPermissions
	compUsesPermissions = ACCESS_COARSE_LOCATION + ACCESS_FINE_LOCATION
}

one sig com_purplefoto_pfdock_PFDockPreferences extends Activity{}{
	app in com_purplefoto_pfdock
	no intentFilter
	no compPermissions
	no compUsesPermissions
}


pred show(){
#Application=1
#Component=4
#IntentFilter=0
no Intent
#Data=4
}
run show
