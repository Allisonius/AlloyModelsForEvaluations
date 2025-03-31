open appDeclaration

one sig com_github_mobile extends Application{}{
	usesPermissions = INTERNET + GET_ACCOUNTS + MANAGE_ACCOUNTS + AUTHENTICATE_ACCOUNTS + READ_SYNC_SETTINGS + READ_SYNC_STATS + USE_CREDENTIALS + WRITE_SYNC_SETTINGS
	no appPermissions
	APIPermissions = INTERNET + GET_ACCOUNTS + MANAGE_ACCOUNTS + AUTHENTICATE_ACCOUNTS + USE_CREDENTIALS + WRITE_SYNC_SETTINGS
}

one sig com_github_mobile_AccountAuthenticatorService extends Service{}{
	app in com_github_mobile
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_github_mobile_BranchFileViewActivity extends Activity{}{
	app in com_github_mobile
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig com_github_mobile_CommitCompareViewActivity extends Activity{}{
	app in com_github_mobile
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig com_github_mobile_CommitFileViewActivity extends Activity{}{
	app in com_github_mobile
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig com_github_mobile_CommitViewActivity extends Activity{}{
	app in com_github_mobile
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig com_github_mobile_CreateCommentActivity extends Activity{}{
	app in com_github_mobile
	intentFilter = IntentFilter2 + IntentFilter2 + IntentFilter2 + IntentFilter2 + IntentFilter2 + IntentFilter2 + IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig com_github_mobile_CreateGistActivity extends Activity{}{
	app in com_github_mobile
	intentFilter = IntentFilter3
	no compPermissions
	no compUsesPermissions
}

one sig com_github_mobile_EditIssueActivity extends Activity{}{
	app in com_github_mobile
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig com_github_mobile_EditIssuesFilterActivity extends Activity{}{
	app in com_github_mobile
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig com_github_mobile_FiltersViewActivity extends Activity{}{
	app in com_github_mobile
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig com_github_mobile_GistFilesViewActivity extends Activity{}{
	app in com_github_mobile
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig com_github_mobile_GistsActivity extends Activity{}{
	app in com_github_mobile
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_github_mobile_GistsViewActivity extends Activity{}{
	app in com_github_mobile
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig com_github_mobile_HomeActivity extends Activity{}{
	app in com_github_mobile
	no intentFilter
	no compPermissions
	compUsesPermissions = AUTHENTICATE_ACCOUNTS + MANAGE_ACCOUNTS + GET_ACCOUNTS
}

one sig com_github_mobile_IssueBrowseActivity extends Activity{}{
	app in com_github_mobile
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig com_github_mobile_IssueDashboardActivity extends Activity{}{
	app in com_github_mobile
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig com_github_mobile_IssueSearchActivity extends Activity{}{
	app in com_github_mobile
	intentFilter = IntentFilter4
	no compPermissions
	no compUsesPermissions
}

one sig com_github_mobile_IssuesViewActivity extends Activity{}{
	app in com_github_mobile
	intentFilter = IntentFilter2
	no compPermissions
	compUsesPermissions = USE_CREDENTIALS + MANAGE_ACCOUNTS + GET_ACCOUNTS
}

one sig com_github_mobile_LoginActivity extends Activity{}{
	app in com_github_mobile
	no intentFilter
	no compPermissions
	compUsesPermissions = USE_CREDENTIALS + AUTHENTICATE_ACCOUNTS + MANAGE_ACCOUNTS + GET_ACCOUNTS + WRITE_SYNC_SETTINGS
}

one sig com_github_mobile_RepositoryContributorsActivity extends Activity{}{
	app in com_github_mobile
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig com_github_mobile_RepositoryViewActivity extends Activity{}{
	app in com_github_mobile
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig com_github_mobile_SearchActivity extends Activity{}{
	app in com_github_mobile
	intentFilter = IntentFilter4
	no compPermissions
	no compUsesPermissions
}

one sig com_github_mobile_SyncAdapterService extends Service{}{
	app in com_github_mobile
	intentFilter = IntentFilter5
	no compPermissions
	no compUsesPermissions
}

one sig com_github_mobile_TwoFactorAuthActivity extends Activity{}{
	app in com_github_mobile
	no intentFilter
	no compPermissions
	compUsesPermissions = USE_CREDENTIALS + AUTHENTICATE_ACCOUNTS + MANAGE_ACCOUNTS + GET_ACCOUNTS + WRITE_SYNC_SETTINGS
}

one sig com_github_mobile_UriLauncherActivity extends Activity{}{
	app in com_github_mobile
	intentFilter = IntentFilter6 + IntentFilter6 + IntentFilter6 + IntentFilter6
	no compPermissions
	no compUsesPermissions
}

one sig com_github_mobile_UserViewActivity extends Activity{}{
	app in com_github_mobile
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = AccountAuthenticator_A
	no categories
	no data
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = VIEW_A
	categories = DEFAULT_C
	no data
}

one sig IntentFilter3 extends IntentFilter{}{
	actions = SEND_A
	categories = DEFAULT_C
	data = YesMimeNoScheme
}

one sig IntentFilter4 extends IntentFilter{}{
	actions = SEARCH_A
	no categories
	no data
}

one sig IntentFilter5 extends IntentFilter{}{
	actions = SyncAdapter_A
	no categories
	no data
}

one sig IntentFilter6 extends IntentFilter{}{
	actions = VIEW_A
	categories = DEFAULT_C
	data = NoMimeYesScheme
}


pred show(){
#Application=1
//#Component=26
#IntentFilter=6
no Intent
#Data=4
}
run show
