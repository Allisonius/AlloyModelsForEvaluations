open appDeclaration

one sig com_foranj_farmtown extends Application{}{
	usesPermissions = WRITE_EXTERNAL_STORAGE + INTERNET + GET_ACCOUNTS + ACCESS_NETWORK_STATE + BILLING + C2D_MESSAGE + RECEIVE + RECEIVE + READ_PHONE_STATE + WAKE_LOCK
	no appPermissions
	no APIPermissions
}

one sig com_foranj_farmtown_ActionHandler extends Activity{}{
	app in com_foranj_farmtown
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_foranj_farmtown_AlarmReceiver extends Receiver{}{
	app in com_foranj_farmtown
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_foranj_farmtown_BillingReceiver extends Receiver{}{
	app in com_foranj_farmtown
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_foranj_farmtown_BillingService extends Service{}{
	app in com_foranj_farmtown
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_foranj_farmtown_Browser extends Activity{}{
	app in com_foranj_farmtown
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_foranj_farmtown_CBDialogActivity extends Activity{}{
	app in com_foranj_farmtown
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_foranj_farmtown_CBImpressionActivity extends Activity{}{
	app in com_foranj_farmtown
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_foranj_farmtown_FacebookProxyActivity extends Activity{}{
	app in com_foranj_farmtown
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_foranj_farmtown_FlurryAgent extends Activity{}{
	app in com_foranj_farmtown
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_foranj_farmtown_GCMBroadcastReceiver extends Receiver{}{
	app in com_foranj_farmtown
	intentFilter = IntentFilter2
	compPermissions = SEND
	no compUsesPermissions
}

one sig com_foranj_farmtown_GeoLocationService extends Service{}{
	app in com_foranj_farmtown
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_foranj_farmtown_GoogleIABProxyActivity extends Activity{}{
	app in com_foranj_farmtown
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_foranj_farmtown_LoginActivity extends Activity{}{
	app in com_foranj_farmtown
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_foranj_farmtown_MessageActivity extends Activity{}{
	app in com_foranj_farmtown
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_foranj_farmtown_PushGCMIntentService extends Service{}{
	app in com_foranj_farmtown
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_foranj_farmtown_PushHandlerActivity extends Activity{}{
	app in com_foranj_farmtown
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_foranj_farmtown_PushWebview extends Activity{}{
	app in com_foranj_farmtown
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_foranj_farmtown_ResponseReceiver extends Receiver{}{
	app in com_foranj_farmtown
	intentFilter = IntentFilter3
	no compPermissions
	no compUsesPermissions
}

one sig com_foranj_farmtown_TJAdUnitView extends Activity{}{
	app in com_foranj_farmtown
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_foranj_farmtown_TJCOffersWebView extends Activity{}{
	app in com_foranj_farmtown
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_foranj_farmtown_TapjoyDailyRewardAdWebView extends Activity{}{
	app in com_foranj_farmtown
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_foranj_farmtown_TapjoyFullScreenAdWebView extends Activity{}{
	app in com_foranj_farmtown
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_foranj_farmtown_TapjoyVideoView extends Activity{}{
	app in com_foranj_farmtown
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_foranj_farmtown_UnityPlayerActivity extends Activity{}{
	app in com_foranj_farmtown
	intentFilter = IntentFilter4
	no compPermissions
	no compUsesPermissions
}

one sig com_foranj_farmtown_UnityPlayerNativeActivity extends Activity{}{
	app in com_foranj_farmtown
	intentFilter = IntentFilter5
	no compPermissions
	no compUsesPermissions
}

one sig com_foranj_farmtown_UnityPlayerProxyActivity extends Activity{}{
	app in com_foranj_farmtown
	intentFilter = IntentFilter6
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = IN_APP_NOTIFY_A + PURCHASE_STATE_CHANGED_A + RESPONSE_CODE_A
	no categories
	no data
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = RECEIVE_A + REGISTRATION_A
	categories = farmtown_C
	no data
}

one sig IntentFilter3 extends IntentFilter{}{
	actions = NOTIFY_A
	no categories
	no data
}

one sig IntentFilter4 extends IntentFilter{}{
	actions = MESSAGE_OLD_A
	categories = DEFAULT_C
	no data
}

one sig IntentFilter5 extends IntentFilter{}{
	actions = MESSAGE_NEW_A
	categories = DEFAULT_C
	no data
}

one sig IntentFilter6 extends IntentFilter{}{
	actions = MESSAGE_A
	categories = DEFAULT_C
	no data
}


pred show(){
#Application=1
//#Component=26
#IntentFilter=6
no Intent
#Data=4
}
run show
