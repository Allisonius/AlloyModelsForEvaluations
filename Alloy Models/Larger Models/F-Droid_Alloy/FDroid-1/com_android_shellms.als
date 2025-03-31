open appDeclaration

one sig com_android_shellms extends Application{}{
	usesPermissions = SEND_SMS + READ_SMS + WRITE_SMS + READ_CONTACTS
	no appPermissions
	APIPermissions = SEND_SMS
}

one sig com_android_shellms_MainActivity extends Activity{}{
	app in com_android_shellms
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_android_shellms_sendSMS extends Service{}{
	app in com_android_shellms
	no intentFilter
	no compPermissions
	compUsesPermissions = SEND_SMS
}


pred show(){
#Application=1
#Component=2
#IntentFilter=0
no Intent
#Data=4
}
run show
