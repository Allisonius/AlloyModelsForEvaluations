open appDeclaration

one sig com_jadn_cc extends Application{}{
	usesPermissions = INTERNET + RECORD_AUDIO + ACCESS_WIFI_STATE + WRITE_EXTERNAL_STORAGE + WAKE_LOCK + READ_PHONE_STATE + ACCESS_COARSE_LOCATION + RECEIVE_BOOT_COMPLETED + READ_LOGS + ACCESS_NETWORK_STATE
	no appPermissions
	APIPermissions = INTERNET + RECORD_AUDIO + ACCESS_WIFI_STATE + WAKE_LOCK + READ_PHONE_STATE + ACCESS_COARSE_LOCATION
}

one sig com_jadn_cc_AdActivity extends Activity{}{
	app in com_jadn_cc
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_jadn_cc_AdMobActivity extends Activity{}{
	app in com_jadn_cc
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_jadn_cc_AlarmHostService extends Service{}{
	app in com_jadn_cc
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_jadn_cc_AlarmReceiver extends Receiver{}{
	app in com_jadn_cc
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig com_jadn_cc_AlarmService extends Service{}{
	app in com_jadn_cc
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_jadn_cc_AudioRecorder extends Activity{}{
	app in com_jadn_cc
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET + RECORD_AUDIO + WAKE_LOCK
}

one sig com_jadn_cc_CarCast extends Activity{}{
	app in com_jadn_cc
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET + WAKE_LOCK
}

one sig com_jadn_cc_ContentService extends Service{}{
	app in com_jadn_cc
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET + WAKE_LOCK
}

one sig com_jadn_cc_DownloadProgress extends Activity{}{
	app in com_jadn_cc
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET + WAKE_LOCK
}

one sig com_jadn_cc_Downloader extends Activity{}{
	app in com_jadn_cc
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_jadn_cc_FeedbackHelp extends Activity{}{
	app in com_jadn_cc
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_jadn_cc_InstallReceiver extends Receiver{}{
	app in com_jadn_cc
	intentFilter = IntentFilter3
	no compPermissions
	no compUsesPermissions
}

one sig com_jadn_cc_OpmlImport extends Activity{}{
	app in com_jadn_cc
	intentFilter = IntentFilter4
	no compPermissions
	compUsesPermissions = INTERNET + WAKE_LOCK
}

one sig com_jadn_cc_PodcastList extends Activity{}{
	app in com_jadn_cc
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET + WAKE_LOCK
}

one sig com_jadn_cc_Search extends Activity{}{
	app in com_jadn_cc
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_jadn_cc_SearchResults extends Activity{}{
	app in com_jadn_cc
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET + WAKE_LOCK
}

one sig com_jadn_cc_Settings extends Activity{}{
	app in com_jadn_cc
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_jadn_cc_Splash extends Activity{}{
	app in com_jadn_cc
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_jadn_cc_SubscriptionEdit extends Activity{}{
	app in com_jadn_cc
	intentFilter = IntentFilter5 + IntentFilter6
	no compPermissions
	compUsesPermissions = INTERNET
}

one sig com_jadn_cc_Subscriptions extends Activity{}{
	app in com_jadn_cc
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET + WAKE_LOCK
}

one sig com_jadn_cc_WifiConnectedReceiver extends Receiver{}{
	app in com_jadn_cc
	intentFilter = IntentFilter7
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = AlarmHostService_A
	no categories
	no data
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = BOOT_COMPLETED_A
	categories = HOME_C
	no data
}

one sig IntentFilter3 extends IntentFilter{}{
	actions = INSTALL_REFERRER_A
	no categories
	no data
}

one sig IntentFilter4 extends IntentFilter{}{
	actions = VIEW_A
	categories = BROWSABLE_C + DEFAULT_C
	data = YesMimeNoScheme + YesMimeNoScheme
}

one sig IntentFilter5 extends IntentFilter{}{
	actions = VIEW_A
	categories = BROWSABLE_C + DEFAULT_C
	data = NoMimeYesScheme + NoMimeYesScheme + NoMimeYesScheme + NoMimeYesScheme + NoMimeYesScheme + NoMimeYesScheme + NoMimeYesScheme
}

one sig IntentFilter6 extends IntentFilter{}{
	actions = VIEW_A
	categories = BROWSABLE_C + DEFAULT_C
	data = YesMimeYesScheme + YesMimeYesScheme + YesMimeYesScheme
}

one sig IntentFilter7 extends IntentFilter{}{
	actions = BOOT_COMPLETED_A
	no categories
	no data
}


pred show(){
#Application=1
//#Component=21
#IntentFilter=7
no Intent
#Data=4
}
run show
