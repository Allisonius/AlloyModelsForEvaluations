open appDeclaration

one sig com_playdom_marvelavengers extends Application{}{
	usesPermissions = BILLING + INTERNET + ACCESS_NETWORK_STATE + VIBRATE + GET_ACCOUNTS + WAKE_LOCK + RECEIVE + ACCESS_WIFI_STATE + ACCESS_COARSE_LOCATION + C2D_MESSAGE + READ_PHONE_STATE + WRITE_EXTERNAL_STORAGE
	no appPermissions
	no APIPermissions
}

one sig com_playdom_marvelavengers_ActionHandler extends Activity{}{
	app in com_playdom_marvelavengers
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_playdom_marvelavengers_AdActivity extends Activity{}{
	app in com_playdom_marvelavengers
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_playdom_marvelavengers_AlarmReceiver extends Receiver{}{
	app in com_playdom_marvelavengers
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_playdom_marvelavengers_Browser extends Activity{}{
	app in com_playdom_marvelavengers
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_playdom_marvelavengers_BurstlyFullscreenActivity extends Activity{}{
	app in com_playdom_marvelavengers
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_playdom_marvelavengers_CoreReceiver extends Receiver{}{
	app in com_playdom_marvelavengers
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_playdom_marvelavengers_EventService extends Service{}{
	app in com_playdom_marvelavengers
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_playdom_marvelavengers_FacebookUIProxy extends Activity{}{
	app in com_playdom_marvelavengers
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_playdom_marvelavengers_GCMPushReceiver extends Receiver{}{
	app in com_playdom_marvelavengers
	intentFilter = IntentFilter1 + IntentFilter2
	compPermissions = SEND
	no compUsesPermissions
}

one sig com_playdom_marvelavengers_GSFullscreenActivity extends Activity{}{
	app in com_playdom_marvelavengers
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_playdom_marvelavengers_IMBrowserActivity extends Activity{}{
	app in com_playdom_marvelavengers
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_playdom_marvelavengers_IntentReceiver extends Receiver{}{
	app in com_playdom_marvelavengers
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_playdom_marvelavengers_JumptapActivity extends Activity{}{
	app in com_playdom_marvelavengers
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_playdom_marvelavengers_LocationService extends Service{}{
	app in com_playdom_marvelavengers
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_playdom_marvelavengers_LoginActivity extends Activity{}{
	app in com_playdom_marvelavengers
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_playdom_marvelavengers_MMActivity extends Activity{}{
	app in com_playdom_marvelavengers
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_playdom_marvelavengers_MarvelAvengers extends Activity{}{
	app in com_playdom_marvelavengers
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_playdom_marvelavengers_OpenUDID_service extends Service{}{
	app in com_playdom_marvelavengers
	intentFilter = IntentFilter3
	no compPermissions
	no compUsesPermissions
}

one sig com_playdom_marvelavengers_PushService extends Service{}{
	app in com_playdom_marvelavengers
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_playdom_marvelavengers_ReferralCapture extends Receiver{}{
	app in com_playdom_marvelavengers
	intentFilter = IntentFilter4
	no compPermissions
	no compUsesPermissions
}

one sig com_playdom_marvelavengers_TJAdUnitView extends Activity{}{
	app in com_playdom_marvelavengers
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_playdom_marvelavengers_TJCOffersWebView extends Activity{}{
	app in com_playdom_marvelavengers
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_playdom_marvelavengers_TapjoyDailyRewardAdWebView extends Activity{}{
	app in com_playdom_marvelavengers
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_playdom_marvelavengers_TapjoyFullScreenAdWebView extends Activity{}{
	app in com_playdom_marvelavengers
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_playdom_marvelavengers_TapjoyVideoView extends Activity{}{
	app in com_playdom_marvelavengers
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_playdom_marvelavengers_VideoPlayer extends Activity{}{
	app in com_playdom_marvelavengers
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = RECEIVE_A + REGISTRATION_A
	categories = avengersalliance_goo_C
	no data
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = PACKAGE_REPLACED_A
	no categories
	data = NoMimeYesScheme
}

one sig IntentFilter3 extends IntentFilter{}{
	actions = GETUDID_A
	no categories
	no data
}

one sig IntentFilter4 extends IntentFilter{}{
	actions = INSTALL_REFERRER_A
	no categories
	no data
}


pred show(){
#Application=1
//#Component=26
#IntentFilter=4
no Intent
#Data=4
}
run show
