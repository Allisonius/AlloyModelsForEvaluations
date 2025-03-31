open appDeclaration

one sig com_boardgamegeek extends Application{}{
	usesPermissions = ACCESS_NETWORK_STATE + AUTHENTICATE_ACCOUNTS + GET_ACCOUNTS + INTERNET + MANAGE_ACCOUNTS + USE_CREDENTIALS + READ_SYNC_STATS + WRITE_EXTERNAL_STORAGE + WRITE_SYNC_SETTINGS + INSTALL_SHORTCUT
	no appPermissions
	APIPermissions = ACCESS_NETWORK_STATE + AUTHENTICATE_ACCOUNTS + GET_ACCOUNTS + INTERNET + MANAGE_ACCOUNTS + USE_CREDENTIALS + READ_SYNC_STATS + WRITE_SYNC_SETTINGS
}

one sig com_boardgamegeek_AboutActivity extends Activity{}{
	app in com_boardgamegeek
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_boardgamegeek_ArticleActivity extends Activity{}{
	app in com_boardgamegeek
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_boardgamegeek_AuthenticationService extends Service{}{
	app in com_boardgamegeek
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_boardgamegeek_BuddiesActivity extends Activity{}{
	app in com_boardgamegeek
	intentFilter = IntentFilter2
	no compPermissions
	compUsesPermissions = USE_CREDENTIALS + ACCESS_NETWORK_STATE + AUTHENTICATE_ACCOUNTS + MANAGE_ACCOUNTS + GET_ACCOUNTS
}

one sig com_boardgamegeek_BuddyActivity extends Activity{}{
	app in com_boardgamegeek
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig com_boardgamegeek_CollectionActivity extends Activity{}{
	app in com_boardgamegeek
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig com_boardgamegeek_ForumActivity extends Activity{}{
	app in com_boardgamegeek
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_boardgamegeek_ForumsActivity extends Activity{}{
	app in com_boardgamegeek
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_boardgamegeek_GameActivity extends Activity{}{
	app in com_boardgamegeek
	intentFilter = IntentFilter2
	no compPermissions
	compUsesPermissions = INTERNET
}

one sig com_boardgamegeek_HomeActivity extends Activity{}{
	app in com_boardgamegeek
	no intentFilter
	no compPermissions
	compUsesPermissions = USE_CREDENTIALS + INTERNET + ACCESS_NETWORK_STATE + AUTHENTICATE_ACCOUNTS + MANAGE_ACCOUNTS + GET_ACCOUNTS
}

one sig com_boardgamegeek_HotnessActivity extends Activity{}{
	app in com_boardgamegeek
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_boardgamegeek_ImageActivity extends Activity{}{
	app in com_boardgamegeek
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_boardgamegeek_LogPlayActivity extends Activity{}{
	app in com_boardgamegeek
	no intentFilter
	no compPermissions
	compUsesPermissions = USE_CREDENTIALS + INTERNET + ACCESS_NETWORK_STATE + AUTHENTICATE_ACCOUNTS + MANAGE_ACCOUNTS + GET_ACCOUNTS
}

one sig com_boardgamegeek_LogPlayerActivity extends Activity{}{
	app in com_boardgamegeek
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET
}

one sig com_boardgamegeek_LoginActivity extends Activity{}{
	app in com_boardgamegeek
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_boardgamegeek_PlayActivity extends Activity{}{
	app in com_boardgamegeek
	intentFilter = IntentFilter2
	no compPermissions
	compUsesPermissions = USE_CREDENTIALS + ACCESS_NETWORK_STATE + AUTHENTICATE_ACCOUNTS + MANAGE_ACCOUNTS + GET_ACCOUNTS
}

one sig com_boardgamegeek_PlaysActivity extends Activity{}{
	app in com_boardgamegeek
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig com_boardgamegeek_PollActivity extends Activity{}{
	app in com_boardgamegeek
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_boardgamegeek_Preferences extends Activity{}{
	app in com_boardgamegeek
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_boardgamegeek_ProducerActivity extends Activity{}{
	app in com_boardgamegeek
	intentFilter = IntentFilter3
	no compPermissions
	no compUsesPermissions
}

one sig com_boardgamegeek_SearchResultsActivity extends Activity{}{
	app in com_boardgamegeek
	intentFilter = IntentFilter4
	no compPermissions
	compUsesPermissions = INTERNET
}

one sig com_boardgamegeek_SyncService extends Service{}{
	app in com_boardgamegeek
	intentFilter = IntentFilter5
	no compPermissions
	compUsesPermissions = USE_CREDENTIALS + ACCESS_NETWORK_STATE + AUTHENTICATE_ACCOUNTS + MANAGE_ACCOUNTS + GET_ACCOUNTS
}

one sig com_boardgamegeek_ThreadActivity extends Activity{}{
	app in com_boardgamegeek
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_boardgamegeek_UpdateService extends Service{}{
	app in com_boardgamegeek
	no intentFilter
	no compPermissions
	compUsesPermissions = AUTHENTICATE_ACCOUNTS
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = AccountAuthenticator_A
	no categories
	no data
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = VIEW_A
	categories = DEFAULT_C
	data = YesMimeNoScheme
}

one sig IntentFilter3 extends IntentFilter{}{
	actions = VIEW_A
	categories = DEFAULT_C
	data = YesMimeNoScheme + YesMimeNoScheme + YesMimeNoScheme
}

one sig IntentFilter4 extends IntentFilter{}{
	actions = SEARCH_A
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
//#Component=24
#IntentFilter=5
no Intent
#Data=4
}
run show
