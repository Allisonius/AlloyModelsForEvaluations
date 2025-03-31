open appDeclaration

one sig com_googlecode_gtalksms extends Application{}{
	usesPermissions = BLUETOOTH + BLUETOOTH_ADMIN + CAMERA + INTERNET + RECEIVE_SMS + RECEIVE_MMS + READ_PHONE_STATE + READ_CONTACTS + SEND_SMS + READ_SMS + WRITE_SMS + WRITE_EXTERNAL_STORAGE + ACCESS_FINE_LOCATION + ACCESS_NETWORK_STATE + READ_LOGS + VIBRATE + MODIFY_PHONE_STATE + CALL_PHONE + WAKE_LOCK + ACCESS_WIFI_STATE + CHANGE_WIFI_STATE + REBOOT + RECEIVE_BOOT_COMPLETED
	no appPermissions
	APIPermissions = BLUETOOTH + BLUETOOTH_ADMIN + CAMERA + INTERNET + READ_PHONE_STATE + SEND_SMS + WRITE_EXTERNAL_STORAGE + ACCESS_FINE_LOCATION + ACCESS_NETWORK_STATE + VIBRATE + CALL_PHONE + WAKE_LOCK + ACCESS_WIFI_STATE + CHANGE_WIFI_STATE
}

one sig com_googlecode_gtalksms_AccessibilityService extends Service{}{
	app in com_googlecode_gtalksms
	intentFilter = IntentFilter1
	compPermissions = BIND_ACCESSIBILITY_SERVICE
	no compUsesPermissions
}

one sig com_googlecode_gtalksms_BootReceiver extends Receiver{}{
	app in com_googlecode_gtalksms
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig com_googlecode_gtalksms_GeoPopup extends Activity{}{
	app in com_googlecode_gtalksms
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_googlecode_gtalksms_KeyboardInputMethod extends Service{}{
	app in com_googlecode_gtalksms
	intentFilter = IntentFilter3
	compPermissions = BIND_INPUT_METHOD
	compUsesPermissions = ACCESS_NETWORK_STATE + WAKE_LOCK
}

one sig com_googlecode_gtalksms_LocationService extends Service{}{
	app in com_googlecode_gtalksms
	no intentFilter
	no compPermissions
	compUsesPermissions = ACCESS_FINE_LOCATION
}

one sig com_googlecode_gtalksms_LogCollector extends Activity{}{
	app in com_googlecode_gtalksms
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_googlecode_gtalksms_MainActivity extends Activity{}{
	app in com_googlecode_gtalksms
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET
}

one sig com_googlecode_gtalksms_MainService extends Service{}{
	app in com_googlecode_gtalksms
	intentFilter = IntentFilter4
	no compPermissions
	compUsesPermissions = ACCESS_NETWORK_STATE + VIBRATE + WAKE_LOCK
}

one sig com_googlecode_gtalksms_MmsReceiver extends Receiver{}{
	app in com_googlecode_gtalksms
	intentFilter = IntentFilter5
	no compPermissions
	no compUsesPermissions
}

one sig com_googlecode_gtalksms_NetworkConnectivityReceiver extends Receiver{}{
	app in com_googlecode_gtalksms
	intentFilter = IntentFilter6
	no compPermissions
	no compUsesPermissions
}

one sig com_googlecode_gtalksms_PowerReceiver extends Receiver{}{
	app in com_googlecode_gtalksms
	intentFilter = IntentFilter7
	no compPermissions
	no compUsesPermissions
}

one sig com_googlecode_gtalksms_Preferences extends Activity{}{
	app in com_googlecode_gtalksms
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_googlecode_gtalksms_PublicIntentReceiver extends Receiver{}{
	app in com_googlecode_gtalksms
	intentFilter = IntentFilter8
	no compPermissions
	no compUsesPermissions
}

one sig com_googlecode_gtalksms_SendIntentActivity extends Activity{}{
	app in com_googlecode_gtalksms
	intentFilter = IntentFilter9
	no compPermissions
	no compUsesPermissions
}

one sig com_googlecode_gtalksms_SmsReceiver extends Receiver{}{
	app in com_googlecode_gtalksms
	intentFilter = IntentFilter10
	no compPermissions
	no compUsesPermissions
}

one sig com_googlecode_gtalksms_UrlActivity extends Activity{}{
	app in com_googlecode_gtalksms
	intentFilter = IntentFilter11
	no compPermissions
	no compUsesPermissions
}

one sig com_googlecode_gtalksms_WidgetProvider extends Receiver{}{
	app in com_googlecode_gtalksms
	intentFilter = IntentFilter12
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = AccessibilityService_A
	no categories
	no data
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = BOOT_COMPLETED_A
	categories = HOME_C
	no data
}

one sig IntentFilter3 extends IntentFilter{}{
	actions = InputMethod_A
	no categories
	no data
}

one sig IntentFilter4 extends IntentFilter{}{
	actions = COMMAND_A + CONNECT_A + DISCONNECT_A + NETWORK_STATUS_CHANGED_A + SEND_A + TOGGLE_A
	no categories
	no data
}

one sig IntentFilter5 extends IntentFilter{}{
	actions = WAP_PUSH_RECEIVED_A
	no categories
	data = YesMimeNoScheme
}

one sig IntentFilter6 extends IntentFilter{}{
	actions = CONNECTIVITY_CHANGE_A
	no categories
	no data
}

one sig IntentFilter7 extends IntentFilter{}{
	actions = ACTION_POWER_CONNECTED_A + ACTION_POWER_DISCONNECTED_A
	no categories
	no data
}

one sig IntentFilter8 extends IntentFilter{}{
	actions = CONNECT_A + DISCONNECT_A + TOGGLE_A
	no categories
	no data
}

one sig IntentFilter9 extends IntentFilter{}{
	actions = SEND_A
	categories = DEFAULT_C
	data = NoMimeNoScheme
}

one sig IntentFilter10 extends IntentFilter{}{
	actions = SMS_RECEIVED_A
	no categories
	no data
}

one sig IntentFilter11 extends IntentFilter{}{
	actions = VIEW_A
	categories = BROWSABLE_C + DEFAULT_C
	data = NoMimeYesScheme + NoMimeYesScheme
}

one sig IntentFilter12 extends IntentFilter{}{
	actions = ACTION_A + APPWIDGET_UPDATE_A + CONNECTION_CHANGED_A
	no categories
	no data
}


pred show(){
#Application=1
//#Component=17
//#IntentFilter=12
no Intent
#Data=4
}
run show
