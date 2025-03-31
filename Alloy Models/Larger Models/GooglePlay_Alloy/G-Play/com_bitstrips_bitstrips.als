open appDeclaration

one sig com_bitstrips_bitstrips extends Application{}{
	usesPermissions = INTERNET + WAKE_LOCK + GET_ACCOUNTS + RECEIVE + WRITE_EXTERNAL_STORAGE + VIBRATE + ACCESS_NETWORK_STATE + ACCESS_WIFI_STATE + C2D_MESSAGE
	no appPermissions
	no APIPermissions
}

one sig com_bitstrips_bitstrips_AppEntry extends Activity{}{
	app in com_bitstrips_bitstrips
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_bitstrips_bitstrips_FacebookWrapActivity extends Activity{}{
	app in com_bitstrips_bitstrips
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_bitstrips_bitstrips_GCMIntentService extends Service{}{
	app in com_bitstrips_bitstrips
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_bitstrips_bitstrips_LoginActivity extends Activity{}{
	app in com_bitstrips_bitstrips
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_bitstrips_bitstrips_MsgWrapActivity extends Activity{}{
	app in com_bitstrips_bitstrips
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_bitstrips_bitstrips_NotificationsReceiver extends Receiver{}{
	app in com_bitstrips_bitstrips
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_bitstrips_bitstrips_PushNotificationsBroadcastReceiver extends Receiver{}{
	app in com_bitstrips_bitstrips
	intentFilter = IntentFilter2
	compPermissions = SEND
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = DELAYED_NOTIFICATION_A + NOTIFICATION_A
	no categories
	data = NoMimeYesScheme
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = RECEIVE_A + REGISTRATION_A
	categories = bitstrips_C
	no data
}


pred show(){
#Application=1
#Component=7
#IntentFilter=2
no Intent
#Data=4
}
run show
