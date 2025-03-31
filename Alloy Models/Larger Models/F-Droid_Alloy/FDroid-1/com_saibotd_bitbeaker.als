open appDeclaration

one sig com_saibotd_bitbeaker extends Application{}{
	usesPermissions = INTERNET + ACCESS_NETWORK_STATE + WRITE_EXTERNAL_STORAGE
	no appPermissions
	APIPermissions = INTERNET + WRITE_EXTERNAL_STORAGE
}

one sig com_saibotd_bitbeaker_ChangesetActivity extends Activity{}{
	app in com_saibotd_bitbeaker
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET
}

one sig com_saibotd_bitbeaker_DiffActivity extends Activity{}{
	app in com_saibotd_bitbeaker
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET
}

one sig com_saibotd_bitbeaker_EventsActivity extends Activity{}{
	app in com_saibotd_bitbeaker
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_saibotd_bitbeaker_IssueActivity extends Activity{}{
	app in com_saibotd_bitbeaker
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET
}

one sig com_saibotd_bitbeaker_IssuesActivity extends Activity{}{
	app in com_saibotd_bitbeaker
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET
}

one sig com_saibotd_bitbeaker_LauncherActivity extends Activity{}{
	app in com_saibotd_bitbeaker
	intentFilter = IntentFilter1
	no compPermissions
	compUsesPermissions = INTERNET
}

one sig com_saibotd_bitbeaker_LoginActivity extends Activity{}{
	app in com_saibotd_bitbeaker
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET
}

one sig com_saibotd_bitbeaker_NewChangesetCommentActivity extends Activity{}{
	app in com_saibotd_bitbeaker
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_saibotd_bitbeaker_NewIssueActivity extends Activity{}{
	app in com_saibotd_bitbeaker
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET
}

one sig com_saibotd_bitbeaker_NewIssueCommentActivity extends Activity{}{
	app in com_saibotd_bitbeaker
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_saibotd_bitbeaker_NewsfeedActivity extends Activity{}{
	app in com_saibotd_bitbeaker
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET
}

one sig com_saibotd_bitbeaker_RepositoriesActivity extends Activity{}{
	app in com_saibotd_bitbeaker
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET
}

one sig com_saibotd_bitbeaker_RepositoryActivity extends Activity{}{
	app in com_saibotd_bitbeaker
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET + WRITE_EXTERNAL_STORAGE
}

one sig com_saibotd_bitbeaker_RepositoryFollowersActivity extends Activity{}{
	app in com_saibotd_bitbeaker
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_saibotd_bitbeaker_SearchableActivity extends Activity{}{
	app in com_saibotd_bitbeaker
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig com_saibotd_bitbeaker_SettingsActivity extends Activity{}{
	app in com_saibotd_bitbeaker
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_saibotd_bitbeaker_SourceActivity extends Activity{}{
	app in com_saibotd_bitbeaker
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET
}

one sig com_saibotd_bitbeaker_SourceBrowserActivity extends Activity{}{
	app in com_saibotd_bitbeaker
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET
}

one sig com_saibotd_bitbeaker_UpdateIssueActivity extends Activity{}{
	app in com_saibotd_bitbeaker
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET
}

one sig com_saibotd_bitbeaker_UserProfileActivity extends Activity{}{
	app in com_saibotd_bitbeaker
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_saibotd_bitbeaker_WikiActivity extends Activity{}{
	app in com_saibotd_bitbeaker
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = VIEW_A
	categories = BROWSABLE_C + DEFAULT_C
	data = NoMimeYesScheme
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = SEARCH_A
	no categories
	no data
}


pred show(){
#Application=1
//#Component=21
#IntentFilter=2
no Intent
#Data=4
}
run show
