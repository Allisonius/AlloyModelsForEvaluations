open appDeclaration

one sig com_netflix_mediaclient extends Application{}{
	usesPermissions = C2D_MESSAGE + ACCESS_NETWORK_STATE + ACCESS_WIFI_STATE + BLUETOOTH + CHANGE_WIFI_MULTICAST_STATE + GET_ACCOUNTS + GET_TASKS + INTERNET + READ_LOGS + READ_PHONE_STATE + WAKE_LOCK + SET_FLAG_NOSOFTKEYS + RECEIVE
	no appPermissions
	APIPermissions = ACCESS_NETWORK_STATE + ACCESS_WIFI_STATE + INTERNET + READ_PHONE_STATE + WAKE_LOCK
}

one sig com_netflix_mediaclient_AccountSplashActivity extends Activity{}{
	app in com_netflix_mediaclient
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_netflix_mediaclient_FacebookLoginActivity extends Activity{}{
	app in com_netflix_mediaclient
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_netflix_mediaclient_FalcorTestActivity extends Activity{}{
	app in com_netflix_mediaclient
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_netflix_mediaclient_FreeTrialActivity extends Activity{}{
	app in com_netflix_mediaclient
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_netflix_mediaclient_GCMBroadcastReceiver extends Receiver{}{
	app in com_netflix_mediaclient
	intentFilter = IntentFilter1
	compPermissions = SEND
	no compUsesPermissions
}

one sig com_netflix_mediaclient_GCMIntentService extends Service{}{
	app in com_netflix_mediaclient
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_netflix_mediaclient_HomeActivity extends Activity{}{
	app in com_netflix_mediaclient
	no intentFilter
	no compPermissions
	compUsesPermissions = WAKE_LOCK
}

one sig com_netflix_mediaclient_LaunchActivity extends Activity{}{
	app in com_netflix_mediaclient
	intentFilter = IntentFilter2
	no compPermissions
	compUsesPermissions = INTERNET + ACCESS_NETWORK_STATE + WAKE_LOCK
}

one sig com_netflix_mediaclient_LoginActivity extends Activity{}{
	app in com_netflix_mediaclient
	no intentFilter
	no compPermissions
	compUsesPermissions = ACCESS_NETWORK_STATE + WAKE_LOCK
}

one sig com_netflix_mediaclient_LogoutActivity extends Activity{}{
	app in com_netflix_mediaclient
	no intentFilter
	no compPermissions
	compUsesPermissions = WAKE_LOCK
}

one sig com_netflix_mediaclient_MdxPlaycardActivity extends Activity{}{
	app in com_netflix_mediaclient
	no intentFilter
	no compPermissions
	compUsesPermissions = WAKE_LOCK
}

one sig com_netflix_mediaclient_MediaButtonIntentReceiver extends Receiver{}{
	app in com_netflix_mediaclient
	intentFilter = IntentFilter3
	no compPermissions
	no compUsesPermissions
}

one sig com_netflix_mediaclient_MovieDetailsActivity extends Activity{}{
	app in com_netflix_mediaclient
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_netflix_mediaclient_NetflixService extends Receiver{}{
	app in com_netflix_mediaclient
	intentFilter = IntentFilter4
	no compPermissions
	compUsesPermissions = ACCESS_NETWORK_STATE + ACCESS_WIFI_STATE + WAKE_LOCK
}

one sig com_netflix_mediaclient_NotificationActivity extends Activity{}{
	app in com_netflix_mediaclient
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_netflix_mediaclient_OpenSourceLicensesActivity extends Activity{}{
	app in com_netflix_mediaclient
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_netflix_mediaclient_PartnerReceiver extends Receiver{}{
	app in com_netflix_mediaclient
	intentFilter = IntentFilter5
	no compPermissions
	no compUsesPermissions
}

one sig com_netflix_mediaclient_PlayerActivity extends Activity{}{
	app in com_netflix_mediaclient
	no intentFilter
	no compPermissions
	compUsesPermissions = ACCESS_NETWORK_STATE + WAKE_LOCK
}

one sig com_netflix_mediaclient_SearchActivity extends Activity{}{
	app in com_netflix_mediaclient
	intentFilter = IntentFilter6
	no compPermissions
	no compUsesPermissions
}

one sig com_netflix_mediaclient_SettingsActivity extends Activity{}{
	app in com_netflix_mediaclient
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_netflix_mediaclient_ShowDetailsActivity extends Activity{}{
	app in com_netflix_mediaclient
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_netflix_mediaclient_SignupActivity extends Activity{}{
	app in com_netflix_mediaclient
	no intentFilter
	no compPermissions
	compUsesPermissions = ACCESS_NETWORK_STATE + WAKE_LOCK
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = RECEIVE_A + REGISTRATION_A
	categories = mediaclient_C
	no data
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = VIEW_A
	categories = BROWSABLE_C + DEFAULT_C
	data = NoMimeYesScheme
}

one sig IntentFilter3 extends IntentFilter{}{
	actions = MEDIA_BUTTON_A
	no categories
	no data
}

one sig IntentFilter4 extends IntentFilter{}{
	actions = BOOT_COMPLETED_A
	no categories
	no data
}

one sig IntentFilter5 extends IntentFilter{}{
	actions = USER_STATUS_A
	no categories
	no data
}

one sig IntentFilter6 extends IntentFilter{}{
	actions = SEARCH_A
	no categories
	no data
}


pred show(){
#Application=1
//#Component=22
#IntentFilter=6
no Intent
#Data=4
}
run show
