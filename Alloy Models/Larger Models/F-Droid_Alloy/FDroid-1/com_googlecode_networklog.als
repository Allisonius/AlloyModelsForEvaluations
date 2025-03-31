open appDeclaration

one sig com_googlecode_networklog extends Application{}{
	usesPermissions = INTERNET + WRITE_EXTERNAL_STORAGE + RECEIVE_BOOT_COMPLETED + ACCESS_SUPERUSER
	no appPermissions
	no APIPermissions
}

one sig com_googlecode_networklog_AppTimelineGraph extends Activity{}{
	app in com_googlecode_networklog
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_googlecode_networklog_BootCompletedReceiver extends Receiver{}{
	app in com_googlecode_networklog
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_googlecode_networklog_ErrorDialogActivity extends Activity{}{
	app in com_googlecode_networklog
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_googlecode_networklog_NetworkLog extends Activity{}{
	app in com_googlecode_networklog
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_googlecode_networklog_NetworkLogService extends Service{}{
	app in com_googlecode_networklog
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_googlecode_networklog_OverallAppTimelineGraph extends Activity{}{
	app in com_googlecode_networklog
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_googlecode_networklog_Preferences extends Activity{}{
	app in com_googlecode_networklog
	no intentFilter
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
#Component=7
#IntentFilter=1
no Intent
#Data=4
}
run show
