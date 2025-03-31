open appDeclaration

one sig com_kiloo_subwaysurf extends Application{}{
	usesPermissions = INTERNET + BILLING + CHECK_LICENSE + WRITE_EXTERNAL_STORAGE + ACCESS_NETWORK_STATE + ACCESS_WIFI_STATE + READ_PHONE_STATE + C2D_MESSAGE + RECEIVE + GET_ACCOUNTS + WAKE_LOCK + GET_TASKS + VIBRATE
	no appPermissions
	APIPermissions = VIBRATE
}

one sig com_kiloo_subwaysurf_AdColonyBrowser extends Activity{}{
	app in com_kiloo_subwaysurf
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_kiloo_subwaysurf_AdColonyFullscreen extends Activity{}{
	app in com_kiloo_subwaysurf
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_kiloo_subwaysurf_AdColonyOverlay extends Activity{}{
	app in com_kiloo_subwaysurf
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_kiloo_subwaysurf_BillingReceiver extends Receiver{}{
	app in com_kiloo_subwaysurf
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_kiloo_subwaysurf_BillingService extends Service{}{
	app in com_kiloo_subwaysurf
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_kiloo_subwaysurf_FlurryFullscreenTakeoverActivity extends Activity{}{
	app in com_kiloo_subwaysurf
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_kiloo_subwaysurf_GCMBroadcastReceiver extends Receiver{}{
	app in com_kiloo_subwaysurf
	intentFilter = IntentFilter2
	compPermissions = SEND
	no compUsesPermissions
}

one sig com_kiloo_subwaysurf_GCMIntentService extends Service{}{
	app in com_kiloo_subwaysurf
	no intentFilter
	no compPermissions
	compUsesPermissions = VIBRATE
}

one sig com_kiloo_subwaysurf_IMBrowserActivity extends Activity{}{
	app in com_kiloo_subwaysurf
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_kiloo_subwaysurf_InterstitialActivity extends Activity{}{
	app in com_kiloo_subwaysurf
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_kiloo_subwaysurf_LoginActivity extends Activity{}{
	app in com_kiloo_subwaysurf
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_kiloo_subwaysurf_NotificationService extends Receiver{}{
	app in com_kiloo_subwaysurf
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_kiloo_subwaysurf_RRAndroidPluginActivity extends Activity{}{
	app in com_kiloo_subwaysurf
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_kiloo_subwaysurf_ReferralReceiver extends Receiver{}{
	app in com_kiloo_subwaysurf
	intentFilter = IntentFilter3
	no compPermissions
	no compUsesPermissions
}

one sig com_kiloo_subwaysurf_UnityADCActivity extends Activity{}{
	app in com_kiloo_subwaysurf
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_kiloo_subwaysurf_UnityPlayerActivity extends Activity{}{
	app in com_kiloo_subwaysurf
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_kiloo_subwaysurf_UnityPlayerNativeActivity extends Activity{}{
	app in com_kiloo_subwaysurf
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_kiloo_subwaysurf_UnityPlayerProxyActivity extends Activity{}{
	app in com_kiloo_subwaysurf
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_kiloo_subwaysurf_VideoPlayer extends Activity{}{
	app in com_kiloo_subwaysurf
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_kiloo_subwaysurf_VungleAdvert extends Activity{}{
	app in com_kiloo_subwaysurf
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_kiloo_subwaysurf_VungleIntentService extends Service{}{
	app in com_kiloo_subwaysurf
	no intentFilter
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
	categories = subwaysurf_C
	no data
}

one sig IntentFilter3 extends IntentFilter{}{
	actions = INSTALL_REFERRER_A
	no categories
	no data
}


pred show(){
#Application=1
//#Component=21
#IntentFilter=3
no Intent
#Data=4
}
run show
