open appDeclaration

one sig com_google_android_apps_translate extends Application{}{
	usesPermissions = CAMERA + INTERNET + READ_SMS + RECORD_AUDIO + ACCESS_NETWORK_STATE + WRITE_EXTERNAL_STORAGE + GET_ACCOUNTS + USE_CREDENTIALS + MANAGE_ACCOUNTS + READ_SMS
	no appPermissions
	APIPermissions = INTERNET + ACCESS_NETWORK_STATE
}

one sig com_google_android_apps_translate_FeedbackConnectivityReceiver extends Receiver{}{
	app in com_google_android_apps_translate
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_google_android_apps_translate_LauncherShortcuts extends Activity{}{
	app in com_google_android_apps_translate
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig com_google_android_apps_translate_LicensesActivity extends Activity{}{
	app in com_google_android_apps_translate
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_google_android_apps_translate_OfflineActivity extends Activity{}{
	app in com_google_android_apps_translate
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_google_android_apps_translate_OfflineDownloadReceiver extends Receiver{}{
	app in com_google_android_apps_translate
	intentFilter = IntentFilter3
	no compPermissions
	no compUsesPermissions
}

one sig com_google_android_apps_translate_PackageProcessService extends Service{}{
	app in com_google_android_apps_translate
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_google_android_apps_translate_PhraseSyncService extends Service{}{
	app in com_google_android_apps_translate
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_google_android_apps_translate_PrefsActivity extends Activity{}{
	app in com_google_android_apps_translate
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_google_android_apps_translate_PreviewActivity extends Activity{}{
	app in com_google_android_apps_translate
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_google_android_apps_translate_SendUserFeedbackService extends Service{}{
	app in com_google_android_apps_translate
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_google_android_apps_translate_ShowStringListActivity extends Activity{}{
	app in com_google_android_apps_translate
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_google_android_apps_translate_ShowTextActivity extends Activity{}{
	app in com_google_android_apps_translate
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_google_android_apps_translate_TourActivity extends Activity{}{
	app in com_google_android_apps_translate
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_google_android_apps_translate_TranslateActivity extends Activity{}{
	app in com_google_android_apps_translate
	intentFilter = IntentFilter4 + IntentFilter5
	no compPermissions
	no compUsesPermissions
}

one sig com_google_android_apps_translate_UserFeedbackActivity extends Activity{}{
	app in com_google_android_apps_translate
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = CONNECTIVITY_CHANGE_A
	no categories
	no data
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = CREATE_SHORTCUT_A
	no categories
	no data
}

one sig IntentFilter3 extends IntentFilter{}{
	actions = DOWNLOAD_COMPLETE_A + DOWNLOAD_NOTIFICATION_CLICKED_A
	no categories
	no data
}

one sig IntentFilter4 extends IntentFilter{}{
	actions = VIEW_A
	categories = BROWSABLE_C + DEFAULT_C
	data = NoMimeYesScheme + NoMimeYesScheme + NoMimeYesScheme + NoMimeYesScheme + NoMimeYesScheme + NoMimeYesScheme
}

one sig IntentFilter5 extends IntentFilter{}{
	actions = SEND_A
	categories = DEFAULT_C
	data = YesMimeNoScheme
}


pred show(){
#Application=1
//#Component=15
#IntentFilter=5
no Intent
#Data=4
}
run show
