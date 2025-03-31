open appDeclaration

one sig com_uploadedlobster_PwdHash extends Application{}{
	no usesPermissions
	no appPermissions
	no APIPermissions
}

one sig com_uploadedlobster_PwdHash_PwdHashApp extends Activity{}{
	app in com_uploadedlobster_PwdHash
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = SEND_A
	categories = DEFAULT_C
	data = YesMimeNoScheme
}


pred show(){
#Application=1
#Component=1
#IntentFilter=1
no Intent
#Data=4
}
run show
