open appDeclaration

one sig com_google_android_youtube extends Application{}{
	usesPermissions = INTERNET + ACCESS_NETWORK_STATE + CHANGE_NETWORK_STATE + ACCESS_WIFI_STATE + WRITE_EXTERNAL_STORAGE + RECEIVE_BOOT_COMPLETED + GET_ACCOUNTS + MANAGE_ACCOUNTS + USE_CREDENTIALS + READ_GSERVICES + GOOGLE_AUTH + youtube + YouTubeUser + RECEIVE + WAKE_LOCK + NFC + CAMERA + C2D_MESSAGE
	no appPermissions
	no APIPermissions
}

one sig com_google_android_youtube_AccountsChangedReceiver extends Receiver{}{
	app in com_google_android_youtube
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_google_android_youtube_AccountsChangedService extends Service{}{
	app in com_google_android_youtube
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_google_android_youtube_AnalyticsReceiver extends Receiver{}{
	app in com_google_android_youtube
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig com_google_android_youtube_AutomaticPairingActivity extends Activity{}{
	app in com_google_android_youtube
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_google_android_youtube_CaptureActivity extends Activity{}{
	app in com_google_android_youtube
	intentFilter = IntentFilter3
	no compPermissions
	no compUsesPermissions
}

one sig com_google_android_youtube_DebugOfflineResyncActivity extends Activity{}{
	app in com_google_android_youtube
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_google_android_youtube_DownloadService extends Service{}{
	app in com_google_android_youtube
	intentFilter = IntentFilter4 + IntentFilter4 + IntentFilter4
	no compPermissions
	no compUsesPermissions
}

one sig com_google_android_youtube_EditVideoActivity extends Activity{}{
	app in com_google_android_youtube
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_google_android_youtube_ExternalPlaybackControllerV14 extends Receiver{}{
	app in com_google_android_youtube
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_google_android_youtube_FroyoSignInActivity extends Activity{}{
	app in com_google_android_youtube
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_google_android_youtube_GcmBroadcastReceiver extends Receiver{}{
	app in com_google_android_youtube
	intentFilter = IntentFilter5
	compPermissions = SEND
	no compUsesPermissions
}

one sig com_google_android_youtube_LicensesActivity extends Activity{}{
	app in com_google_android_youtube
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_google_android_youtube_LogCollectorActivity extends Activity{}{
	app in com_google_android_youtube
	intentFilter = IntentFilter6
	no compPermissions
	no compUsesPermissions
}

one sig com_google_android_youtube_NewVersionAvailableActivity extends Activity{}{
	app in com_google_android_youtube
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_google_android_youtube_PostPairingActivity extends Activity{}{
	app in com_google_android_youtube
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_google_android_youtube_PrefetchService extends Service{}{
	app in com_google_android_youtube
	intentFilter = IntentFilter7 + IntentFilter8 + IntentFilter7 + IntentFilter8 + IntentFilter7 + IntentFilter8
	no compPermissions
	no compUsesPermissions
}

one sig com_google_android_youtube_ScreenManagementActivity extends Activity{}{
	app in com_google_android_youtube
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_google_android_youtube_ScreenPairingActivity extends Activity{}{
	app in com_google_android_youtube
	intentFilter = IntentFilter9
	no compPermissions
	no compUsesPermissions
}

one sig com_google_android_youtube_SettingsActivity extends Activity{}{
	app in com_google_android_youtube
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_google_android_youtube_SettingsActivityV8 extends Activity{}{
	app in com_google_android_youtube
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_google_android_youtube_Shell extends Activity{}{
	app in com_google_android_youtube
	intentFilter = IntentFilter10 + IntentFilter11 + IntentFilter12 + IntentFilter13 + IntentFilter14 + IntentFilter15 + IntentFilter16 + IntentFilter17 + IntentFilter18 + IntentFilter10 + IntentFilter11 + IntentFilter12 + IntentFilter13 + IntentFilter14 + IntentFilter15 + IntentFilter16 + IntentFilter17 + IntentFilter18 + IntentFilter10 + IntentFilter11 + IntentFilter12 + IntentFilter13 + IntentFilter14 + IntentFilter15 + IntentFilter16 + IntentFilter17 + IntentFilter18 + IntentFilter10
	no compPermissions
	no compUsesPermissions
}

one sig com_google_android_youtube_StandalonePlayerActivity extends Activity{}{
	app in com_google_android_youtube
	intentFilter = IntentFilter19
	compPermissions = INTERNET
	no compUsesPermissions
}

one sig com_google_android_youtube_UploadActivity extends Activity{}{
	app in com_google_android_youtube
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_google_android_youtube_UploadService extends Service{}{
	app in com_google_android_youtube
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_google_android_youtube_WatchWhileActivity extends Activity{}{
	app in com_google_android_youtube
	intentFilter = IntentFilter20
	no compPermissions
	no compUsesPermissions
}

one sig com_google_android_youtube_WidgetActivity extends Activity{}{
	app in com_google_android_youtube
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_google_android_youtube_WidgetProvider extends Receiver{}{
	app in com_google_android_youtube
	intentFilter = IntentFilter21 + IntentFilter21 + IntentFilter21 + IntentFilter21
	no compPermissions
	no compUsesPermissions
}

one sig com_google_android_youtube_WidgetUpdateService extends Service{}{
	app in com_google_android_youtube
	no intentFilter
	compPermissions = BIND_REMOTEVIEWS
	no compUsesPermissions
}

one sig com_google_android_youtube_YouTubeService extends Service{}{
	app in com_google_android_youtube
	intentFilter = IntentFilter19
	compPermissions = INTERNET
	no compUsesPermissions
}

one sig com_google_android_youtube_YouTubeTvRouteProviderService extends Service{}{
	app in com_google_android_youtube
	intentFilter = IntentFilter22
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = LOGIN_ACCOUNTS_CHANGED_A
	no categories
	no data
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = INSTALL_REFERRER_A
	no categories
	no data
}

one sig IntentFilter3 extends IntentFilter{}{
	actions = YOUTUBE_SCAN_A
	categories = DEFAULT_C
	no data
}

one sig IntentFilter4 extends IntentFilter{}{
	actions = BOOT_COMPLETED_A
	no categories
	no data
}

one sig IntentFilter5 extends IntentFilter{}{
	actions = RECEIVE_A
	categories = youtube_C
	no data
}

one sig IntentFilter6 extends IntentFilter{}{
	actions = bugreport_A
	categories = DEFAULT_C
	no data
}

one sig IntentFilter7 extends IntentFilter{}{
	actions = ACTION_POWER_CONNECTED_A + BOOT_COMPLETED_A + CONNECTIVITY_CHANGE_A
	no categories
	no data
}

one sig IntentFilter8 extends IntentFilter{}{
	actions = MEDIA_MOUNTED_A
	no categories
	data = NoMimeYesScheme
}

one sig IntentFilter9 extends IntentFilter{}{
	actions = VIEW_A
	categories = BROWSABLE_C + DEFAULT_C
	data = NoMimeYesScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme
}

one sig IntentFilter10 extends IntentFilter{}{
	actions = VIEW_A
	categories = BROWSABLE_C + DEFAULT_C
	data = NoMimeYesScheme
}

one sig IntentFilter11 extends IntentFilter{}{
	actions = MEDIA_SEARCH_A + SEARCH_A
	categories = DEFAULT_C
	no data
}

one sig IntentFilter12 extends IntentFilter{}{
	actions = VIEW_A
	categories = BROWSABLE_C + DEFAULT_C
	data = NoMimeYesScheme + NoMimeYesScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme
}

one sig IntentFilter13 extends IntentFilter{}{
	actions = UPLOAD_A
	categories = DEFAULT_C
	data = NoMimeNoScheme
}

one sig IntentFilter14 extends IntentFilter{}{
	actions = VIEW_A
	categories = BROWSABLE_C + DEFAULT_C
	data = NoMimeYesScheme + NoMimeYesScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme
}

one sig IntentFilter15 extends IntentFilter{}{
	actions = VIEW_A
	categories = BROWSABLE_C + DEFAULT_C
	data = NoMimeYesScheme + NoMimeYesScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme
}

one sig IntentFilter16 extends IntentFilter{}{
	actions = NDEF_DISCOVERED_A + VIEW_A
	categories = BROWSABLE_C + DEFAULT_C
	data = NoMimeYesScheme + NoMimeYesScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme
}

one sig IntentFilter17 extends IntentFilter{}{
	actions = NDEF_DISCOVERED_A + VIEW_A
	categories = BROWSABLE_C + DEFAULT_C
	data = NoMimeYesScheme + NoMimeYesScheme + NoMimeNoScheme
}

one sig IntentFilter18 extends IntentFilter{}{
	actions = VIEW_A
	categories = BROWSABLE_C + DEFAULT_C
	data = NoMimeYesScheme + NoMimeYesScheme + NoMimeNoScheme + NoMimeNoScheme
}

one sig IntentFilter19 extends IntentFilter{}{
	actions = START_A
	categories = DEFAULT_C
	no data
}

one sig IntentFilter20 extends IntentFilter{}{
	actions = SEARCH_A
	no categories
	no data
}

one sig IntentFilter21 extends IntentFilter{}{
	actions = APPWIDGET_UPDATE_A + widget_update_A
	no categories
	no data
}

one sig IntentFilter22 extends IntentFilter{}{
	actions = MediaRouteProviderService_A
	no categories
	no data
}


pred show(){
#Application=1
//#Component=30
//#IntentFilter=22
no Intent
#Data=4
}
run show
