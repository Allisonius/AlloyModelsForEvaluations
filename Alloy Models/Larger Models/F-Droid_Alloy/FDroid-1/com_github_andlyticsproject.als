open appDeclaration

one sig com_github_andlyticsproject extends Application{}{
	usesPermissions = INTERNET + ACCESS_NETWORK_STATE + GET_ACCOUNTS + USE_CREDENTIALS + MANAGE_ACCOUNTS + AUTHENTICATE_ACCOUNTS + READ_SYNC_SETTINGS + WRITE_SYNC_SETTINGS + WRITE_EXTERNAL_STORAGE + VIBRATE
	no appPermissions
	APIPermissions = INTERNET + GET_ACCOUNTS + USE_CREDENTIALS + MANAGE_ACCOUNTS + AUTHENTICATE_ACCOUNTS + READ_SYNC_SETTINGS + WRITE_SYNC_SETTINGS + VIBRATE
}

one sig com_github_andlyticsproject_AboutActivity extends Activity{}{
	app in com_github_andlyticsproject
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_github_andlyticsproject_AccountSpecificPreferenceActivity extends Activity{}{
	app in com_github_andlyticsproject
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_github_andlyticsproject_AccountsChangedReceiver extends Receiver{}{
	app in com_github_andlyticsproject
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_github_andlyticsproject_AdmobAccountAuthenticator extends Service{}{
	app in com_github_andlyticsproject
	intentFilter = IntentFilter2
	no compPermissions
	compUsesPermissions = AUTHENTICATE_ACCOUNTS + WRITE_SYNC_SETTINGS
}

one sig com_github_andlyticsproject_AdmobActivity extends Activity{}{
	app in com_github_andlyticsproject
	no intentFilter
	no compPermissions
	compUsesPermissions = USE_CREDENTIALS + INTERNET + MANAGE_ACCOUNTS + GET_ACCOUNTS
}

one sig com_github_andlyticsproject_AdmobAuthenticatorActivity extends Activity{}{
	app in com_github_andlyticsproject
	no intentFilter
	no compPermissions
	compUsesPermissions = USE_CREDENTIALS + INTERNET + AUTHENTICATE_ACCOUNTS + MANAGE_ACCOUNTS + GET_ACCOUNTS + WRITE_SYNC_SETTINGS
}

one sig com_github_andlyticsproject_AppInfoActivity extends Activity{}{
	app in com_github_andlyticsproject
	no intentFilter
	no compPermissions
	compUsesPermissions = GET_ACCOUNTS
}

one sig com_github_andlyticsproject_ChartActivity extends Activity{}{
	app in com_github_andlyticsproject
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_github_andlyticsproject_CommentsActivity extends Activity{}{
	app in com_github_andlyticsproject
	no intentFilter
	no compPermissions
	compUsesPermissions = USE_CREDENTIALS + VIBRATE + MANAGE_ACCOUNTS + GET_ACCOUNTS
}

one sig com_github_andlyticsproject_ExportActivity extends Activity{}{
	app in com_github_andlyticsproject
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_github_andlyticsproject_ExportService extends Service{}{
	app in com_github_andlyticsproject
	no intentFilter
	no compPermissions
	compUsesPermissions = VIBRATE
}

one sig com_github_andlyticsproject_ImportActivity extends Activity{}{
	app in com_github_andlyticsproject
	intentFilter = IntentFilter3 + IntentFilter3
	no compPermissions
	no compUsesPermissions
}

one sig com_github_andlyticsproject_ImportService extends Service{}{
	app in com_github_andlyticsproject
	no intentFilter
	no compPermissions
	compUsesPermissions = USE_CREDENTIALS + VIBRATE + MANAGE_ACCOUNTS + WRITE_SYNC_SETTINGS + GET_ACCOUNTS
}

one sig com_github_andlyticsproject_LoginActivity extends Activity{}{
	app in com_github_andlyticsproject
	no intentFilter
	no compPermissions
	compUsesPermissions = USE_CREDENTIALS + INTERNET + MANAGE_ACCOUNTS + WRITE_SYNC_SETTINGS + GET_ACCOUNTS
}

one sig com_github_andlyticsproject_Main extends Activity{}{
	app in com_github_andlyticsproject
	no intentFilter
	no compPermissions
	compUsesPermissions = USE_CREDENTIALS + INTERNET + MANAGE_ACCOUNTS + WRITE_SYNC_SETTINGS + GET_ACCOUNTS
}

one sig com_github_andlyticsproject_NotificationPreferenceActivity extends Activity{}{
	app in com_github_andlyticsproject
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_github_andlyticsproject_PreferenceActivity extends Activity{}{
	app in com_github_andlyticsproject
	intentFilter = IntentFilter4
	no compPermissions
	compUsesPermissions = READ_SYNC_SETTINGS
}

one sig com_github_andlyticsproject_SyncAdapterService extends Service{}{
	app in com_github_andlyticsproject
	intentFilter = IntentFilter5
	no compPermissions
	compUsesPermissions = USE_CREDENTIALS + INTERNET + VIBRATE + MANAGE_ACCOUNTS + GET_ACCOUNTS
}

one sig com_github_andlyticsproject_SyncDeveloperAccountsService extends Service{}{
	app in com_github_andlyticsproject
	no intentFilter
	no compPermissions
	compUsesPermissions = READ_SYNC_SETTINGS
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = LOGIN_ACCOUNTS_CHANGED_A
	no categories
	no data
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = AccountAuthenticator_A
	no categories
	no data
}

one sig IntentFilter3 extends IntentFilter{}{
	actions = VIEW_A
	categories = DEFAULT_C
	data = YesMimeYesScheme
}

one sig IntentFilter4 extends IntentFilter{}{
	actions = PREFERENCES_A
	categories = DEFAULT_C
	no data
}

one sig IntentFilter5 extends IntentFilter{}{
	actions = SyncAdapter_A
	no categories
	no data
}


pred show(){
#Application=1
//#Component=19
#IntentFilter=5
no Intent
#Data=4
}
run show
