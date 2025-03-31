open appDeclaration

one sig com_politedroid extends Application{}{
	usesPermissions = READ_CALENDAR + RECEIVE_BOOT_COMPLETED
	no appPermissions
	no APIPermissions
}

one sig com_politedroid_Preferences extends Activity{}{
	app in com_politedroid
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_politedroid_Update extends Receiver{}{
	app in com_politedroid
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = BOOT_COMPLETED_A
	no categories
	no data
}


pred show(){
#Application=1
#Component=2
#IntentFilter=1
no Intent
#Data=4
}
run show
