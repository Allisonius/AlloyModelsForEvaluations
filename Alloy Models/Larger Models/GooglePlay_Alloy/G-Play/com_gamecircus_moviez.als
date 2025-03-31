open appDeclaration

one sig com_gamecircus_moviez extends Application{}{
	usesPermissions = INTERNET + ACCESS_NETWORK_STATE + BILLING + READ_PHONE_STATE + WRITE_EXTERNAL_STORAGE + RECEIVE_BOOT_COMPLETED + VIBRATE + ACCESS_WIFI_STATE + BLUETOOTH
	no appPermissions
	no APIPermissions
}

one sig com_gamecircus_moviez_AdActivity extends Activity{}{
	app in com_gamecircus_moviez
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gamecircus_moviez_CBDialogActivity extends Activity{}{
	app in com_gamecircus_moviez
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gamecircus_moviez_FacebookProxyActivity extends Activity{}{
	app in com_gamecircus_moviez
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gamecircus_moviez_FlurryFullscreenTakeoverActivity extends Activity{}{
	app in com_gamecircus_moviez
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gamecircus_moviez_GoogleIABProxyActivity extends Activity{}{
	app in com_gamecircus_moviez
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gamecircus_moviez_IMBrowserActivity extends Activity{}{
	app in com_gamecircus_moviez
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gamecircus_moviez_LoginActivity extends Activity{}{
	app in com_gamecircus_moviez
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gamecircus_moviez_MMActivity extends Activity{}{
	app in com_gamecircus_moviez
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gamecircus_moviez_MoPubActivity extends Activity{}{
	app in com_gamecircus_moviez
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gamecircus_moviez_MraidActivity extends Activity{}{
	app in com_gamecircus_moviez
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gamecircus_moviez_MraidBrowser extends Activity{}{
	app in com_gamecircus_moviez
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gamecircus_moviez_NotificationAlarmReceiver extends Receiver{}{
	app in com_gamecircus_moviez
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gamecircus_moviez_NotificationBootReceiver extends Receiver{}{
	app in com_gamecircus_moviez
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_gamecircus_moviez_PHContentView extends Activity{}{
	app in com_gamecircus_moviez
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gamecircus_moviez_PHInterstitialActivity extends Activity{}{
	app in com_gamecircus_moviez
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gamecircus_moviez_ResponseReceiver extends Receiver{}{
	app in com_gamecircus_moviez
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig com_gamecircus_moviez_TJCOffersWebView extends Activity{}{
	app in com_gamecircus_moviez
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gamecircus_moviez_TapjoyDailyRewardAdWebView extends Activity{}{
	app in com_gamecircus_moviez
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gamecircus_moviez_TapjoyFullScreenAdWebView extends Activity{}{
	app in com_gamecircus_moviez
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gamecircus_moviez_TapjoyVideoView extends Activity{}{
	app in com_gamecircus_moviez
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gamecircus_moviez_UnityPlayerActivity extends Activity{}{
	app in com_gamecircus_moviez
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gamecircus_moviez_UnityPlayerNativeActivity extends Activity{}{
	app in com_gamecircus_moviez
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gamecircus_moviez_VideoPlayer extends Activity{}{
	app in com_gamecircus_moviez
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = BOOT_COMPLETED_A + MEDIA_MOUNTED_A
	no categories
	no data
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = NOTIFY_A
	no categories
	no data
}


pred show(){
#Application=1
//#Component=23
#IntentFilter=2
no Intent
#Data=4
}
run show
