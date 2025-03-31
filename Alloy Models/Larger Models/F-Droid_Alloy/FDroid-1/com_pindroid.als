open appDeclaration

one sig com_pindroid extends Application{}{
	usesPermissions = GET_ACCOUNTS + USE_CREDENTIALS + MANAGE_ACCOUNTS + AUTHENTICATE_ACCOUNTS + INTERNET + WRITE_SETTINGS + READ_SYNC_STATS + READ_SYNC_SETTINGS + WRITE_SYNC_SETTINGS
	no appPermissions
	APIPermissions = GET_ACCOUNTS + USE_CREDENTIALS + MANAGE_ACCOUNTS + AUTHENTICATE_ACCOUNTS + WRITE_SYNC_SETTINGS
}

one sig com_pindroid_AboutActivity extends Activity{}{
	app in com_pindroid
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_pindroid_AccountReceiver extends Receiver{}{
	app in com_pindroid
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig com_pindroid_AccountService extends Service{}{
	app in com_pindroid
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_pindroid_AddBookmark extends Activity{}{
	app in com_pindroid
	intentFilter = IntentFilter3 + IntentFilter4 + IntentFilter5 + IntentFilter1
	no compPermissions
	compUsesPermissions = GET_ACCOUNTS
}

one sig com_pindroid_AuthenticationService extends Service{}{
	app in com_pindroid
	intentFilter = IntentFilter6
	no compPermissions
	no compUsesPermissions
}

one sig com_pindroid_AuthenticatorActivity extends Activity{}{
	app in com_pindroid
	no intentFilter
	no compPermissions
	compUsesPermissions = USE_CREDENTIALS + AUTHENTICATE_ACCOUNTS + MANAGE_ACCOUNTS + GET_ACCOUNTS + WRITE_SYNC_SETTINGS
}

one sig com_pindroid_BookmarkSyncService extends Service{}{
	app in com_pindroid
	intentFilter = IntentFilter7
	no compPermissions
	no compUsesPermissions
}

one sig com_pindroid_BrowseBookmarks extends Activity{}{
	app in com_pindroid
	intentFilter = IntentFilter8 + IntentFilter8 + IntentFilter1
	no compPermissions
	compUsesPermissions = AUTHENTICATE_ACCOUNTS + GET_ACCOUNTS
}

one sig com_pindroid_BrowseNotes extends Activity{}{
	app in com_pindroid
	intentFilter = IntentFilter8 + IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_pindroid_BrowseTags extends Activity{}{
	app in com_pindroid
	intentFilter = IntentFilter8 + IntentFilter9 + IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_pindroid_ChooseTagShortcut extends Activity{}{
	app in com_pindroid
	intentFilter = IntentFilter10
	no compPermissions
	no compUsesPermissions
}

one sig com_pindroid_LargeWidgetConfigure extends Activity{}{
	app in com_pindroid
	intentFilter = IntentFilter11
	no compPermissions
	no compUsesPermissions
}

one sig com_pindroid_Main extends Activity{}{
	app in com_pindroid
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_pindroid_MainSearchResults extends Activity{}{
	app in com_pindroid
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_pindroid_PackageReceiver extends Receiver{}{
	app in com_pindroid
	intentFilter = IntentFilter12 + IntentFilter13
	no compPermissions
	no compUsesPermissions
}

one sig com_pindroid_PeriodicSyncReceiver extends Receiver{}{
	app in com_pindroid
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_pindroid_PinDroidExtension extends Service{}{
	app in com_pindroid
	intentFilter = IntentFilter14
	compPermissions = READ_EXTENSION_DATA
	compUsesPermissions = GET_ACCOUNTS
}

one sig com_pindroid_Preferences extends Activity{}{
	app in com_pindroid
	intentFilter = IntentFilter15
	no compPermissions
	no compUsesPermissions
}

one sig com_pindroid_SaveBookmarkService extends Service{}{
	app in com_pindroid
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_pindroid_SaveReadLaterBookmark extends Activity{}{
	app in com_pindroid
	intentFilter = IntentFilter5
	no compPermissions
	compUsesPermissions = GET_ACCOUNTS
}

one sig com_pindroid_SearchWidgetProvider extends Receiver{}{
	app in com_pindroid
	intentFilter = IntentFilter16
	no compPermissions
	no compUsesPermissions
}

one sig com_pindroid_SmallWidgetConfigure extends Activity{}{
	app in com_pindroid
	intentFilter = IntentFilter11
	no compPermissions
	no compUsesPermissions
}

one sig com_pindroid_SmallWidgetProvider extends Receiver{}{
	app in com_pindroid
	intentFilter = IntentFilter16
	no compPermissions
	no compUsesPermissions
}

one sig com_pindroid_StandaloneSaveReadLaterBookmark extends Activity{}{
	app in com_pindroid
	intentFilter = IntentFilter17
	no compPermissions
	no compUsesPermissions
}

one sig com_pindroid_ViewBookmark extends Activity{}{
	app in com_pindroid
	intentFilter = IntentFilter8 + IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_pindroid_ViewNote extends Activity{}{
	app in com_pindroid
	intentFilter = IntentFilter8 + IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = SEARCH_A
	no categories
	no data
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = LOGIN_ACCOUNTS_CHANGED_A
	no categories
	no data
}

one sig IntentFilter3 extends IntentFilter{}{
	actions = EDIT_A
	categories = DEFAULT_C
	data = NoMimeYesScheme
}

one sig IntentFilter4 extends IntentFilter{}{
	actions = SEND_A
	categories = DEFAULT_C
	data = NoMimeYesScheme
}

one sig IntentFilter5 extends IntentFilter{}{
	actions = SEND_A
	categories = DEFAULT_C
	data = YesMimeNoScheme
}

one sig IntentFilter6 extends IntentFilter{}{
	actions = AccountAuthenticator_A
	no categories
	no data
}

one sig IntentFilter7 extends IntentFilter{}{
	actions = SyncAdapter_A
	no categories
	no data
}

one sig IntentFilter8 extends IntentFilter{}{
	actions = VIEW_A
	categories = DEFAULT_C
	data = NoMimeYesScheme
}

one sig IntentFilter9 extends IntentFilter{}{
	actions = PICK_A
	categories = DEFAULT_C
	data = NoMimeYesScheme
}

one sig IntentFilter10 extends IntentFilter{}{
	actions = CREATE_SHORTCUT_A
	categories = DEFAULT_C
	no data
}

one sig IntentFilter11 extends IntentFilter{}{
	actions = APPWIDGET_CONFIGURE_A
	no categories
	no data
}

one sig IntentFilter12 extends IntentFilter{}{
	actions = PACKAGE_ADDED_A + PACKAGE_REMOVED_A
	no categories
	data = NoMimeYesScheme
}

one sig IntentFilter13 extends IntentFilter{}{
	actions = MY_PACKAGE_REPLACED_A
	no categories
	no data
}

one sig IntentFilter14 extends IntentFilter{}{
	actions = Extension_A
	no categories
	no data
}

one sig IntentFilter15 extends IntentFilter{}{
	actions = MANAGE_NETWORK_USAGE_A
	categories = DEFAULT_C
	no data
}

one sig IntentFilter16 extends IntentFilter{}{
	actions = APPWIDGET_UPDATE_A
	no categories
	no data
}

one sig IntentFilter17 extends IntentFilter{}{
	actions = ReadLater_A
	categories = DEFAULT_C
	data = YesMimeNoScheme
}


pred show(){
#Application=1
//#Component=26
//#IntentFilter=17
no Intent
#Data=4
}
run show
