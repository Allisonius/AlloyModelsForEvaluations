open appDeclaration

one sig com_magicjack extends Application{}{
	usesPermissions = ACCESS_NETWORK_STATE + ACCESS_WIFI_STATE + BLUETOOTH + GET_TASKS + INTERNET + MODIFY_AUDIO_SETTINGS + READ_CONTACTS + READ_LOGS + READ_PHONE_STATE + RECEIVE_BOOT_COMPLETED + RECORD_AUDIO + REORDER_TASKS + VIBRATE + WAKE_LOCK + WRITE_EXTERNAL_STORAGE + BROADCAST_STICKY
	no appPermissions
	APIPermissions = ACCESS_WIFI_STATE + BLUETOOTH + GET_TASKS + MODIFY_AUDIO_SETTINGS + READ_PHONE_STATE + RECORD_AUDIO + VIBRATE + WAKE_LOCK + BROADCAST_STICKY
}

one sig com_magicjack_AdvancedActivity extends Activity{}{
	app in com_magicjack
	no intentFilter
	no compPermissions
	compUsesPermissions = GET_TASKS + VIBRATE + WAKE_LOCK
}

one sig com_magicjack_AppKeepAliveService extends Service{}{
	app in com_magicjack
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_magicjack_BootCompletedReceiver extends Receiver{}{
	app in com_magicjack
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_magicjack_CallInfoActivity extends Activity{}{
	app in com_magicjack
	no intentFilter
	no compPermissions
	compUsesPermissions = GET_TASKS + VIBRATE + WAKE_LOCK
}

one sig com_magicjack_CallStateActivity extends Activity{}{
	app in com_magicjack
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_magicjack_ContactActivity extends Activity{}{
	app in com_magicjack
	no intentFilter
	no compPermissions
	compUsesPermissions = GET_TASKS + VIBRATE + WAKE_LOCK
}

one sig com_magicjack_ContactsIntegrationActivity extends Activity{}{
	app in com_magicjack
	intentFilter = IntentFilter2 + IntentFilter3
	no compPermissions
	no compUsesPermissions
}

one sig com_magicjack_MainService extends Service{}{
	app in com_magicjack
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_magicjack_MainTabActivity extends Activity{}{
	app in com_magicjack
	no intentFilter
	no compPermissions
	compUsesPermissions = GET_TASKS + VIBRATE + WAKE_LOCK
}

one sig com_magicjack_StatusBarNotificationActivity extends Activity{}{
	app in com_magicjack
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_magicjack_TestActivity1 extends Activity{}{
	app in com_magicjack
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_magicjack_TestActivity2 extends Activity{}{
	app in com_magicjack
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_magicjack_UpdateActivity extends Activity{}{
	app in com_magicjack
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_magicjack_WebLoginActivity extends Activity{}{
	app in com_magicjack
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = BOOT_COMPLETED_A
	no categories
	no data
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = CALL_A + CALL_PRIVILEGED_A
	categories = DEFAULT_C
	data = NoMimeYesScheme
}

one sig IntentFilter3 extends IntentFilter{}{
	actions = CALL_BUTTON_A
	categories = BROWSABLE_C + DEFAULT_C
	no data
}


pred show(){
#Application=1
//#Component=14
#IntentFilter=3
no Intent
#Data=4
}
run show
