open appDeclaration

one sig com_xabber_androiddev extends Application{}{
	usesPermissions = READ_CONTACTS + WRITE_CONTACTS + AUTHENTICATE_ACCOUNTS + MANAGE_ACCOUNTS + GET_ACCOUNTS + READ_SYNC_SETTINGS + WRITE_SYNC_SETTINGS + RECEIVE_BOOT_COMPLETED + INTERNET + VIBRATE + WAKE_LOCK + WRITE_EXTERNAL_STORAGE + ACCESS_NETWORK_STATE
	no appPermissions
	no APIPermissions
}

one sig com_xabber_androiddev_AboutViewer extends Activity{}{
	app in com_xabber_androiddev
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_xabber_androiddev_AccountAdd extends Activity{}{
	app in com_xabber_androiddev
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_xabber_androiddev_AccountAuthenticatorService extends Service{}{
	app in com_xabber_androiddev
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_xabber_androiddev_AccountEditor extends Activity{}{
	app in com_xabber_androiddev
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_xabber_androiddev_AccountList extends Activity{}{
	app in com_xabber_androiddev
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_xabber_androiddev_ArchiveRequest extends Activity{}{
	app in com_xabber_androiddev
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_xabber_androiddev_BootReceiver extends Receiver{}{
	app in com_xabber_androiddev
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig com_xabber_androiddev_CertificateConfirmation extends Activity{}{
	app in com_xabber_androiddev
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_xabber_androiddev_ChatEditor extends Activity{}{
	app in com_xabber_androiddev
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_xabber_androiddev_ChatList extends Activity{}{
	app in com_xabber_androiddev
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_xabber_androiddev_ChatViewer extends Activity{}{
	app in com_xabber_androiddev
	intentFilter = IntentFilter3
	no compPermissions
	no compUsesPermissions
}

one sig com_xabber_androiddev_ClearNotifications extends Activity{}{
	app in com_xabber_androiddev
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_xabber_androiddev_ComposingPausedReceiver extends Receiver{}{
	app in com_xabber_androiddev
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_xabber_androiddev_ContactAdd extends Activity{}{
	app in com_xabber_androiddev
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_xabber_androiddev_ContactEditor extends Activity{}{
	app in com_xabber_androiddev
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_xabber_androiddev_ContactList extends Activity{}{
	app in com_xabber_androiddev
	intentFilter = IntentFilter4 + IntentFilter5 + IntentFilter6 + IntentFilter6 + IntentFilter7
	no compPermissions
	no compUsesPermissions
}

one sig com_xabber_androiddev_ContactViewer extends Activity{}{
	app in com_xabber_androiddev
	intentFilter = IntentFilter8
	no compPermissions
	no compUsesPermissions
}

one sig com_xabber_androiddev_FingerprintViewer extends Activity{}{
	app in com_xabber_androiddev
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_xabber_androiddev_GoAwayReceiver extends Receiver{}{
	app in com_xabber_androiddev
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_xabber_androiddev_GoXaReceiver extends Receiver{}{
	app in com_xabber_androiddev
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_xabber_androiddev_LoadActivity extends Activity{}{
	app in com_xabber_androiddev
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_xabber_androiddev_MUCEditor extends Activity{}{
	app in com_xabber_androiddev
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_xabber_androiddev_OAuthActivity extends Activity{}{
	app in com_xabber_androiddev
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_xabber_androiddev_OccupantList extends Activity{}{
	app in com_xabber_androiddev
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_xabber_androiddev_OpenSourceViewer extends Activity{}{
	app in com_xabber_androiddev
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_xabber_androiddev_PasswordRequest extends Activity{}{
	app in com_xabber_androiddev
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_xabber_androiddev_PhraseEditor extends Activity{}{
	app in com_xabber_androiddev
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_xabber_androiddev_PhraseList extends Activity{}{
	app in com_xabber_androiddev
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_xabber_androiddev_PreferenceEditor extends Activity{}{
	app in com_xabber_androiddev
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_xabber_androiddev_QuestionViewer extends Activity{}{
	app in com_xabber_androiddev
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_xabber_androiddev_ReconnectionActivity extends Activity{}{
	app in com_xabber_androiddev
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_xabber_androiddev_StatusEditor extends Activity{}{
	app in com_xabber_androiddev
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_xabber_androiddev_SyncAdapterService extends Service{}{
	app in com_xabber_androiddev
	intentFilter = IntentFilter9
	no compPermissions
	no compUsesPermissions
}

one sig com_xabber_androiddev_XabberService extends Service{}{
	app in com_xabber_androiddev
	no intentFilter
	no compPermissions
	no compUsesPermissions
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
	actions = MAIN_A
	no categories
	no data
}

one sig IntentFilter4 extends IntentFilter{}{
	actions = VIEW_A
	categories = BROWSABLE_C + DEFAULT_C
	data = NoMimeYesScheme
}

one sig IntentFilter5 extends IntentFilter{}{
	actions = SEND_A
	categories = DEFAULT_C
	data = YesMimeNoScheme
}

one sig IntentFilter6 extends IntentFilter{}{
	actions = SENDTO_A
	categories = DEFAULT_C
	data = NoMimeYesScheme + NoMimeNoScheme
}

one sig IntentFilter7 extends IntentFilter{}{
	actions = CREATE_SHORTCUT_A
	categories = DEFAULT_C
	no data
}

one sig IntentFilter8 extends IntentFilter{}{
	actions = VIEW_A
	categories = DEFAULT_C
	data = YesMimeNoScheme + NoMimeYesScheme + NoMimeNoScheme
}

one sig IntentFilter9 extends IntentFilter{}{
	actions = SyncAdapter_A
	no categories
	no data
}


pred show(){
#Application=1
//#Component=34
//#IntentFilter=9
no Intent
#Data=4
}
run show
