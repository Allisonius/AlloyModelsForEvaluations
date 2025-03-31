open appDeclaration

one sig com_gamecircus_songz extends Application{}{
	usesPermissions = INTERNET + ACCESS_NETWORK_STATE + BILLING + READ_PHONE_STATE + WRITE_EXTERNAL_STORAGE + RECEIVE_BOOT_COMPLETED + VIBRATE + ACCESS_WIFI_STATE + BLUETOOTH
	no appPermissions
	no APIPermissions
}

one sig com_gamecircus_songz_AdActivity extends Activity{}{
	app in com_gamecircus_songz
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gamecircus_songz_CBDialogActivity extends Activity{}{
	app in com_gamecircus_songz
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gamecircus_songz_FacebookProxyActivity extends Activity{}{
	app in com_gamecircus_songz
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gamecircus_songz_FlurryFullscreenTakeoverActivity extends Activity{}{
	app in com_gamecircus_songz
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gamecircus_songz_GoogleIABProxyActivity extends Activity{}{
	app in com_gamecircus_songz
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gamecircus_songz_IMBrowserActivity extends Activity{}{
	app in com_gamecircus_songz
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gamecircus_songz_LoginActivity extends Activity{}{
	app in com_gamecircus_songz
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gamecircus_songz_MMActivity extends Activity{}{
	app in com_gamecircus_songz
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gamecircus_songz_MoPubActivity extends Activity{}{
	app in com_gamecircus_songz
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gamecircus_songz_MraidActivity extends Activity{}{
	app in com_gamecircus_songz
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gamecircus_songz_MraidBrowser extends Activity{}{
	app in com_gamecircus_songz
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gamecircus_songz_NotificationAlarmReceiver extends Receiver{}{
	app in com_gamecircus_songz
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gamecircus_songz_NotificationBootReceiver extends Receiver{}{
	app in com_gamecircus_songz
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_gamecircus_songz_PHContentView extends Activity{}{
	app in com_gamecircus_songz
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gamecircus_songz_PHInterstitialActivity extends Activity{}{
	app in com_gamecircus_songz
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gamecircus_songz_ResponseReceiver extends Receiver{}{
	app in com_gamecircus_songz
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig com_gamecircus_songz_TJCOffersWebView extends Activity{}{
	app in com_gamecircus_songz
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gamecircus_songz_TapjoyDailyRewardAdWebView extends Activity{}{
	app in com_gamecircus_songz
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gamecircus_songz_TapjoyFullScreenAdWebView extends Activity{}{
	app in com_gamecircus_songz
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gamecircus_songz_TapjoyVideoView extends Activity{}{
	app in com_gamecircus_songz
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gamecircus_songz_UnityPlayerActivity extends Activity{}{
	app in com_gamecircus_songz
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gamecircus_songz_UnityPlayerNativeActivity extends Activity{}{
	app in com_gamecircus_songz
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_gamecircus_songz_VideoPlayer extends Activity{}{
	app in com_gamecircus_songz
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
