open appDeclaration

one sig com_dropbox_android extends Application{}{
	usesPermissions = ACCOUNT_INFO_ALARM_TRIGGER + C2D_MESSAGE + CAMERA + INTERNET + READ_EXTERNAL_STORAGE + WRITE_EXTERNAL_STORAGE + ACCESS_WIFI_STATE + ACCESS_NETWORK_STATE + WAKE_LOCK + RECEIVE_BOOT_COMPLETED + VIBRATE + GET_ACCOUNTS + AUTHENTICATE_ACCOUNTS + MANAGE_ACCOUNTS + READ_SYNC_SETTINGS + WRITE_SYNC_SETTINGS + RECEIVE + READ_CONTACTS
	no appPermissions
	APIPermissions = ACCESS_WIFI_STATE + ACCESS_NETWORK_STATE + WAKE_LOCK + VIBRATE + GET_ACCOUNTS + AUTHENTICATE_ACCOUNTS
}

one sig com_dropbox_android_AccountsAndSyncSetupActivity extends Activity{}{
	app in com_dropbox_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_dropbox_android_AlbumViewActivity extends Activity{}{
	app in com_dropbox_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_dropbox_android_AuthenticationService extends Service{}{
	app in com_dropbox_android
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_dropbox_android_BootReceiver extends Receiver{}{
	app in com_dropbox_android
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig com_dropbox_android_CameraUploadDetailsActivity extends Activity{}{
	app in com_dropbox_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_dropbox_android_CameraUploadService extends Service{}{
	app in com_dropbox_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_dropbox_android_CameraUploadSettingsActivity extends Activity{}{
	app in com_dropbox_android
	intentFilter = IntentFilter3
	no compPermissions
	no compUsesPermissions
}

one sig com_dropbox_android_CardIOActivity extends Activity{}{
	app in com_dropbox_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_dropbox_android_CopyLinkToClipboardActivity extends Activity{}{
	app in com_dropbox_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_dropbox_android_DataEntryActivity extends Activity{}{
	app in com_dropbox_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_dropbox_android_DbxSyncService extends Service{}{
	app in com_dropbox_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_dropbox_android_DevControllerActivity extends Activity{}{
	app in com_dropbox_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_dropbox_android_DropboxActionBarActivity extends Activity{}{
	app in com_dropbox_android
	intentFilter = IntentFilter4
	no compPermissions
	compUsesPermissions = VIBRATE
}

one sig com_dropbox_android_DropboxAuth extends Activity{}{
	app in com_dropbox_android
	intentFilter = IntentFilter5 + IntentFilter6
	no compPermissions
	no compUsesPermissions
}

one sig com_dropbox_android_DropboxBrowser extends Activity{}{
	app in com_dropbox_android
	intentFilter = IntentFilter7
	no compPermissions
	no compUsesPermissions
}

one sig com_dropbox_android_DropboxChooserActivity extends Activity{}{
	app in com_dropbox_android
	intentFilter = IntentFilter8 + IntentFilter9 + IntentFilter10
	no compPermissions
	compUsesPermissions = ACCESS_NETWORK_STATE
}

one sig com_dropbox_android_DropboxCreateShortcut extends Activity{}{
	app in com_dropbox_android
	intentFilter = IntentFilter11
	no compPermissions
	no compUsesPermissions
}

one sig com_dropbox_android_DropboxGetFrom extends Activity{}{
	app in com_dropbox_android
	intentFilter = IntentFilter12
	no compPermissions
	no compUsesPermissions
}

one sig com_dropbox_android_DropboxNetworkReceiver extends Receiver{}{
	app in com_dropbox_android
	intentFilter = IntentFilter13
	no compPermissions
	compUsesPermissions = ACCESS_NETWORK_STATE
}

one sig com_dropbox_android_DropboxSendTo extends Activity{}{
	app in com_dropbox_android
	intentFilter = IntentFilter14
	no compPermissions
	no compUsesPermissions
}

one sig com_dropbox_android_DropboxWebViewActivity extends Activity{}{
	app in com_dropbox_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_dropbox_android_ExternalMediaStatusReceiver extends Receiver{}{
	app in com_dropbox_android
	intentFilter = IntentFilter15
	no compPermissions
	no compUsesPermissions
}

one sig com_dropbox_android_ExternalUnlinkFailedActivity extends Activity{}{
	app in com_dropbox_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_dropbox_android_GalleryActivity extends Activity{}{
	app in com_dropbox_android
	no intentFilter
	no compPermissions
	compUsesPermissions = ACCESS_NETWORK_STATE + WAKE_LOCK
}

one sig com_dropbox_android_GalleryPickerActivity extends Activity{}{
	app in com_dropbox_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_dropbox_android_GcmReceiver extends Receiver{}{
	app in com_dropbox_android
	intentFilter = IntentFilter16
	compPermissions = SEND
	no compUsesPermissions
}

one sig com_dropbox_android_GcmService extends Service{}{
	app in com_dropbox_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_dropbox_android_InstallUpdateActivity extends Activity{}{
	app in com_dropbox_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_dropbox_android_LocalFileBrowserActivity extends Activity{}{
	app in com_dropbox_android
	no intentFilter
	no compPermissions
	compUsesPermissions = WAKE_LOCK
}

one sig com_dropbox_android_LockCodeActivity extends Activity{}{
	app in com_dropbox_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_dropbox_android_LockCodePrefsActivity extends Activity{}{
	app in com_dropbox_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_dropbox_android_LoginChoiceActivity extends Activity{}{
	app in com_dropbox_android
	intentFilter = IntentFilter17
	no compPermissions
	no compUsesPermissions
}

one sig com_dropbox_android_LoginOrNewAcctActivity extends Activity{}{
	app in com_dropbox_android
	no intentFilter
	no compPermissions
	compUsesPermissions = GET_ACCOUNTS
}

one sig com_dropbox_android_MoveActivity extends Activity{}{
	app in com_dropbox_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_dropbox_android_NotificationService extends Service{}{
	app in com_dropbox_android
	no intentFilter
	no compPermissions
	compUsesPermissions = VIBRATE
}

one sig com_dropbox_android_PaymentsUpgradeActivity extends Activity{}{
	app in com_dropbox_android
	no intentFilter
	no compPermissions
	compUsesPermissions = ACCESS_NETWORK_STATE
}

one sig com_dropbox_android_PhotoGridPickerActivity extends Activity{}{
	app in com_dropbox_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_dropbox_android_PrefsActivity extends Activity{}{
	app in com_dropbox_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_dropbox_android_ReferralActivity extends Activity{}{
	app in com_dropbox_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_dropbox_android_ReportReceiver extends Receiver{}{
	app in com_dropbox_android
	intentFilter = IntentFilter18
	no compPermissions
	compUsesPermissions = VIBRATE
}

one sig com_dropbox_android_SearchActivity extends Activity{}{
	app in com_dropbox_android
	intentFilter = IntentFilter19
	no compPermissions
	no compUsesPermissions
}

one sig com_dropbox_android_SendFeedbackActivity extends Activity{}{
	app in com_dropbox_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_dropbox_android_ShareViaEmailActivity extends Activity{}{
	app in com_dropbox_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_dropbox_android_SsoCallbackReceiver extends Activity{}{
	app in com_dropbox_android
	intentFilter = IntentFilter20
	no compPermissions
	no compUsesPermissions
}

one sig com_dropbox_android_SyncService extends Service{}{
	app in com_dropbox_android
	intentFilter = IntentFilter21
	no compPermissions
	no compUsesPermissions
}

one sig com_dropbox_android_TextEditActivity extends Activity{}{
	app in com_dropbox_android
	intentFilter = IntentFilter22
	no compPermissions
	no compUsesPermissions
}

one sig com_dropbox_android_TourActivity extends Activity{}{
	app in com_dropbox_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_dropbox_android_UserPrefsActivity extends Activity{}{
	app in com_dropbox_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_dropbox_android_VideoPlayerActivity extends Activity{}{
	app in com_dropbox_android
	no intentFilter
	no compPermissions
	compUsesPermissions = ACCESS_NETWORK_STATE + WAKE_LOCK
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = AccountAuthenticator_A
	no categories
	no data
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = BOOT_COMPLETED_A
	no categories
	no data
}

one sig IntentFilter3 extends IntentFilter{}{
	actions = CAMERA_UPLOAD_SETTINGS_A
	categories = DEFAULT_C
	no data
}

one sig IntentFilter4 extends IntentFilter{}{
	actions = VIEW_A
	categories = BROWSABLE_C + DEFAULT_C
	data = NoMimeYesScheme + NoMimeYesScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme
}

one sig IntentFilter5 extends IntentFilter{}{
	actions = AUTHENTICATE_V1_A
	categories = DEFAULT_C
	no data
}

one sig IntentFilter6 extends IntentFilter{}{
	actions = AUTHENTICATE_V2_A
	categories = DEFAULT_C
	no data
}

one sig IntentFilter7 extends IntentFilter{}{
	actions = BROWSE_A + EDIT_A + VIEW_A
	categories = DEFAULT_C
	data = YesMimeNoScheme + YesMimeNoScheme
}

one sig IntentFilter8 extends IntentFilter{}{
	actions = GET_CONTENT_A
	categories = DEFAULT_C
	no data
}

one sig IntentFilter9 extends IntentFilter{}{
	actions = GET_PREVIEW_A
	categories = DEFAULT_C
	no data
}

one sig IntentFilter10 extends IntentFilter{}{
	actions = GET_DIRECT_A
	categories = DEFAULT_C
	no data
}

one sig IntentFilter11 extends IntentFilter{}{
	actions = CREATE_SHORTCUT_A
	categories = DEFAULT_C
	no data
}

one sig IntentFilter12 extends IntentFilter{}{
	actions = GET_CONTENT_A
	categories = DEFAULT_C + OPENABLE_C
	data = NoMimeNoScheme
}

one sig IntentFilter13 extends IntentFilter{}{
	actions = CONNECTIVITY_CHANGE_A + USER_PRESENT_A
	no categories
	no data
}

one sig IntentFilter14 extends IntentFilter{}{
	actions = SEND_A + SEND_MULTIPLE_A
	categories = DEFAULT_C
	data = NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme
}

one sig IntentFilter15 extends IntentFilter{}{
	actions = MEDIA_BAD_REMOVAL_A + MEDIA_MOUNTED_A + MEDIA_REMOVED_A
	no categories
	no data
}

one sig IntentFilter16 extends IntentFilter{}{
	actions = RECEIVE_A + REGISTRATION_A
	categories = android_C
	no data
}

one sig IntentFilter17 extends IntentFilter{}{
	actions = HTC_TOKEN_A + LOGIN_A + SAMSUNG_LOGIN_A + SAMSUNG_SIGN_UP_A + SIGN_UP_A + STD_OOBE_A + WEB_SESSION_TOKEN_A
	categories = DEFAULT_C
	no data
}

one sig IntentFilter18 extends IntentFilter{}{
	actions = REPORT_A
	no categories
	no data
}

one sig IntentFilter19 extends IntentFilter{}{
	actions = SEARCH_A
	no categories
	no data
}

one sig IntentFilter20 extends IntentFilter{}{
	actions = VIEW_A
	categories = BROWSABLE_C + DEFAULT_C
	data = NoMimeYesScheme
}

one sig IntentFilter21 extends IntentFilter{}{
	actions = SyncAdapter_A
	no categories
	no data
}

one sig IntentFilter22 extends IntentFilter{}{
	actions = EDIT_A + VIEW_A
	categories = DEFAULT_C
	data = NoMimeYesScheme + NoMimeYesScheme + NoMimeNoScheme
}


pred show(){
#Application=1
//#Component=49
//#IntentFilter=22
no Intent
#Data=4
}
run show
