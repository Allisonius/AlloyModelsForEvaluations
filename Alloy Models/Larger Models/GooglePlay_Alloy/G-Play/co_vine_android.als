open appDeclaration

one sig co_vine_android extends Application{}{
	usesPermissions = AUTHENTICATE_ACCOUNTS + GET_ACCOUNTS + INTERNET + MANAGE_ACCOUNTS + READ_CONTACTS + WRITE_EXTERNAL_STORAGE + AUTH_APP + WAKE_LOCK + READ_PROFILE + READ_PHONE_STATE + VIBRATE + RECEIVE + C2D_MESSAGE + CAMERA + RECORD_AUDIO + CAMERA_EXTENDED + INSTALL_SHORTCUT
	no appPermissions
	APIPermissions = AUTHENTICATE_ACCOUNTS + GET_ACCOUNTS + INTERNET + MANAGE_ACCOUNTS + WAKE_LOCK + READ_PHONE_STATE + VIBRATE + RECORD_AUDIO
}

one sig co_vine_android_AccountsChangedReceiver extends Receiver{}{
	app in co_vine_android
	intentFilter = IntentFilter1
	compPermissions = MANAGE_USERS
	no compUsesPermissions
}

one sig co_vine_android_AuthenticatorActivity extends Activity{}{
	app in co_vine_android
	no intentFilter
	compPermissions = MANAGE_USERS
	compUsesPermissions = AUTHENTICATE_ACCOUNTS + MANAGE_ACCOUNTS + GET_ACCOUNTS
}

one sig co_vine_android_CameraService extends Service{}{
	app in co_vine_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig co_vine_android_CameraWidgetConfigureActivity extends Activity{}{
	app in co_vine_android
	intentFilter = IntentFilter2
	no compPermissions
	compUsesPermissions = INSTALL_SHORTCUT + AUTHENTICATE_ACCOUNTS
}

one sig co_vine_android_CameraWidgetProvider extends Receiver{}{
	app in co_vine_android
	intentFilter = IntentFilter3
	no compPermissions
	no compUsesPermissions
}

one sig co_vine_android_ChannelsListActivity extends Activity{}{
	app in co_vine_android
	no intentFilter
	no compPermissions
	compUsesPermissions = WAKE_LOCK
}

one sig co_vine_android_CommentsActivity extends Activity{}{
	app in co_vine_android
	no intentFilter
	no compPermissions
	compUsesPermissions = WAKE_LOCK
}

one sig co_vine_android_ContentControlsActivity extends Activity{}{
	app in co_vine_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig co_vine_android_DebugHomeActivity extends Activity{}{
	app in co_vine_android
	no intentFilter
	no compPermissions
	compUsesPermissions = INSTALL_SHORTCUT + VIBRATE + AUTHENTICATE_ACCOUNTS + WAKE_LOCK
}

one sig co_vine_android_DeviceBootReceiver extends Receiver{}{
	app in co_vine_android
	intentFilter = IntentFilter4 + IntentFilter5 + IntentFilter6 + IntentFilter7
	no compPermissions
	no compUsesPermissions
}

one sig co_vine_android_EditProfileCropActivity extends Activity{}{
	app in co_vine_android
	no intentFilter
	no compPermissions
	compUsesPermissions = WAKE_LOCK
}

one sig co_vine_android_ExploreChannelsActivity extends Activity{}{
	app in co_vine_android
	no intentFilter
	no compPermissions
	compUsesPermissions = AUTHENTICATE_ACCOUNTS + WAKE_LOCK
}

one sig co_vine_android_ExploreVideoListActivity extends Activity{}{
	app in co_vine_android
	no intentFilter
	no compPermissions
	compUsesPermissions = WAKE_LOCK
}

one sig co_vine_android_FindFriendsActivity extends Activity{}{
	app in co_vine_android
	no intentFilter
	no compPermissions
	compUsesPermissions = WAKE_LOCK
}

one sig co_vine_android_GCMBroadcastReceiver extends Receiver{}{
	app in co_vine_android
	intentFilter = IntentFilter8
	compPermissions = SEND
	no compUsesPermissions
}

one sig co_vine_android_GCMNotificationService extends Service{}{
	app in co_vine_android
	no intentFilter
	no compPermissions
	compUsesPermissions = AUTHENTICATE_ACCOUNTS + VIBRATE
}

one sig co_vine_android_GCMRegistrationService extends Service{}{
	app in co_vine_android
	no intentFilter
	no compPermissions
	compUsesPermissions = INSTALL_SHORTCUT + AUTHENTICATE_ACCOUNTS + VIBRATE + MANAGE_ACCOUNTS + GET_ACCOUNTS
}

one sig co_vine_android_HashtagActivity extends Activity{}{
	app in co_vine_android
	no intentFilter
	no compPermissions
	compUsesPermissions = WAKE_LOCK
}

one sig co_vine_android_HomeTabActivity extends Activity{}{
	app in co_vine_android
	no intentFilter
	no compPermissions
	compUsesPermissions = INSTALL_SHORTCUT + AUTHENTICATE_ACCOUNTS + VIBRATE + MANAGE_ACCOUNTS + WAKE_LOCK + GET_ACCOUNTS
}

one sig co_vine_android_ImageActivity extends Activity{}{
	app in co_vine_android
	no intentFilter
	no compPermissions
	compUsesPermissions = WAKE_LOCK
}

one sig co_vine_android_LoginActivity extends Activity{}{
	app in co_vine_android
	no intentFilter
	no compPermissions
	compUsesPermissions = AUTHENTICATE_ACCOUNTS + WAKE_LOCK
}

one sig co_vine_android_LoginTwitterActivity extends Activity{}{
	app in co_vine_android
	no intentFilter
	no compPermissions
	compUsesPermissions = INSTALL_SHORTCUT + AUTHENTICATE_ACCOUNTS + MANAGE_ACCOUNTS + WAKE_LOCK + GET_ACCOUNTS
}

one sig co_vine_android_NotificationSettingsActivity extends Activity{}{
	app in co_vine_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig co_vine_android_PostActivity extends Activity{}{
	app in co_vine_android
	no intentFilter
	no compPermissions
	compUsesPermissions = AUTHENTICATE_ACCOUNTS + WAKE_LOCK
}

one sig co_vine_android_PostOptionsDialogActivity extends Activity{}{
	app in co_vine_android
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig co_vine_android_ProfileActivity extends Activity{}{
	app in co_vine_android
	no intentFilter
	no compPermissions
	compUsesPermissions = WAKE_LOCK
}

one sig co_vine_android_RecordingActivity extends Activity{}{
	app in co_vine_android
	no intentFilter
	no compPermissions
	compUsesPermissions = VIBRATE + WAKE_LOCK
}

one sig co_vine_android_ResetPasswordActivity extends Activity{}{
	app in co_vine_android
	no intentFilter
	no compPermissions
	compUsesPermissions = WAKE_LOCK
}

one sig co_vine_android_ReshareActivity extends Activity{}{
	app in co_vine_android
	no intentFilter
	no compPermissions
	compUsesPermissions = AUTHENTICATE_ACCOUNTS + WAKE_LOCK
}

one sig co_vine_android_SearchActivity extends Activity{}{
	app in co_vine_android
	no intentFilter
	no compPermissions
	compUsesPermissions = WAKE_LOCK
}

one sig co_vine_android_SettingsActivity extends Activity{}{
	app in co_vine_android
	no intentFilter
	no compPermissions
	compUsesPermissions = AUTHENTICATE_ACCOUNTS + WAKE_LOCK
}

one sig co_vine_android_SignUpPagerActivity extends Activity{}{
	app in co_vine_android
	no intentFilter
	no compPermissions
	compUsesPermissions = READ_PHONE_STATE + WAKE_LOCK + GET_ACCOUNTS
}

one sig co_vine_android_SingleActivity extends Activity{}{
	app in co_vine_android
	no intentFilter
	no compPermissions
	compUsesPermissions = AUTHENTICATE_ACCOUNTS + WAKE_LOCK
}

one sig co_vine_android_StartActivity extends Activity{}{
	app in co_vine_android
	intentFilter = IntentFilter9 + IntentFilter10 + IntentFilter10 + IntentFilter10
	no compPermissions
	compUsesPermissions = INSTALL_SHORTCUT + AUTHENTICATE_ACCOUNTS + VIBRATE + MANAGE_ACCOUNTS + WAKE_LOCK + GET_ACCOUNTS
}

one sig co_vine_android_UploadsListActivity extends Activity{}{
	app in co_vine_android
	no intentFilter
	no compPermissions
	compUsesPermissions = WAKE_LOCK
}

one sig co_vine_android_UsersActivity extends Activity{}{
	app in co_vine_android
	no intentFilter
	no compPermissions
	compUsesPermissions = WAKE_LOCK
}

one sig co_vine_android_VineAuthenticationService extends Service{}{
	app in co_vine_android
	intentFilter = IntentFilter11
	compPermissions = MANAGE_USERS
	no compUsesPermissions
}

one sig co_vine_android_VineService extends Service{}{
	app in co_vine_android
	no intentFilter
	no compPermissions
	compUsesPermissions = INSTALL_SHORTCUT + AUTHENTICATE_ACCOUNTS + VIBRATE + MANAGE_ACCOUNTS + GET_ACCOUNTS
}

one sig co_vine_android_VineUploadService extends Service{}{
	app in co_vine_android
	no intentFilter
	no compPermissions
	compUsesPermissions = AUTHENTICATE_ACCOUNTS + VIBRATE
}

one sig co_vine_android_WebViewActivity extends Activity{}{
	app in co_vine_android
	no intentFilter
	no compPermissions
	compUsesPermissions = WAKE_LOCK
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = LOGIN_ACCOUNTS_CHANGED_A
	no categories
	no data
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = APPWIDGET_CONFIGURE_A
	no categories
	no data
}

one sig IntentFilter3 extends IntentFilter{}{
	actions = APPWIDGET_UPDATE_A
	no categories
	no data
}

one sig IntentFilter4 extends IntentFilter{}{
	actions = BOOT_COMPLETED_A
	no categories
	no data
}

one sig IntentFilter5 extends IntentFilter{}{
	actions = EXTERNAL_APPLICATIONS_AVAILABLE_A
	no categories
	no data
}

one sig IntentFilter6 extends IntentFilter{}{
	actions = MY_PACKAGE_REPLACED_A
	no categories
	no data
}

one sig IntentFilter7 extends IntentFilter{}{
	actions = PACKAGE_REPLACED_A
	no categories
	data = NoMimeYesScheme
}

one sig IntentFilter8 extends IntentFilter{}{
	actions = RECEIVE_A
	categories = android_C
	no data
}

one sig IntentFilter9 extends IntentFilter{}{
	actions = VIEW_A
	categories = DEFAULT_C
	data = NoMimeYesScheme
}

one sig IntentFilter10 extends IntentFilter{}{
	actions = VIEW_A
	categories = BROWSABLE_C + DEFAULT_C
	data = NoMimeYesScheme
}

one sig IntentFilter11 extends IntentFilter{}{
	actions = AccountAuthenticator_A
	no categories
	no data
}


pred show(){
#Application=1
//#Component=40
//#IntentFilter=11
no Intent
#Data=4
}
run show
