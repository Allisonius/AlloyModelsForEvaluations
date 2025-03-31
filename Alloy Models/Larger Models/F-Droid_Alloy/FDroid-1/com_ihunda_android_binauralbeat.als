open appDeclaration

one sig com_ihunda_android_binauralbeat extends Application{}{
	usesPermissions = WAKE_LOCK + READ_PHONE_STATE
	no appPermissions
	APIPermissions = WAKE_LOCK
}

one sig com_ihunda_android_binauralbeat_BBeat extends Activity{}{
	app in com_ihunda_android_binauralbeat
	no intentFilter
	no compPermissions
	compUsesPermissions = WAKE_LOCK
}

one sig com_ihunda_android_binauralbeat_Comments extends Activity{}{
	app in com_ihunda_android_binauralbeat
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_ihunda_android_binauralbeat_IncomingCallReceiver extends Receiver{}{
	app in com_ihunda_android_binauralbeat
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = PHONE_STATE_A
	no categories
	no data
}


pred show(){
#Application=1
#Component=3
#IntentFilter=1
no Intent
#Data=4
}
run show
