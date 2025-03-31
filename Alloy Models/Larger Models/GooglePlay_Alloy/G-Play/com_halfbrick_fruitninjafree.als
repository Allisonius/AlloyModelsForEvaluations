open appDeclaration

one sig com_halfbrick_fruitninjafree extends Application{}{
	usesPermissions = C2D_MESSAGE + RECEIVE + INTERNET + GET_ACCOUNTS + WAKE_LOCK + ACCESS_NETWORK_STATE + ACCESS_WIFI_STATE + ACCESS_COARSE_LOCATION + WRITE_EXTERNAL_STORAGE + GET_TASKS + BILLING + ACCESS_FINE_LOCATION + READ_PHONE_STATE
	no appPermissions
	no APIPermissions
}

one sig com_halfbrick_fruitninjafree_AdActivity extends Activity{}{
	app in com_halfbrick_fruitninjafree
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_halfbrick_fruitninjafree_AdColonyBrowser extends Activity{}{
	app in com_halfbrick_fruitninjafree
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_halfbrick_fruitninjafree_AdColonyFullscreen extends Activity{}{
	app in com_halfbrick_fruitninjafree
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_halfbrick_fruitninjafree_AdColonyOverlay extends Activity{}{
	app in com_halfbrick_fruitninjafree
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_halfbrick_fruitninjafree_AppService extends Service{}{
	app in com_halfbrick_fruitninjafree
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_halfbrick_fruitninjafree_BillingReceiver extends Receiver{}{
	app in com_halfbrick_fruitninjafree
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_halfbrick_fruitninjafree_BillingService extends Service{}{
	app in com_halfbrick_fruitninjafree
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_halfbrick_fruitninjafree_GCMIntentService extends Service{}{
	app in com_halfbrick_fruitninjafree
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_halfbrick_fruitninjafree_GSFullscreenActivity extends Activity{}{
	app in com_halfbrick_fruitninjafree
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_halfbrick_fruitninjafree_IMBrowserActivity extends Activity{}{
	app in com_halfbrick_fruitninjafree
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_halfbrick_fruitninjafree_MMActivity extends Activity{}{
	app in com_halfbrick_fruitninjafree
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_halfbrick_fruitninjafree_MoPubActivity extends Activity{}{
	app in com_halfbrick_fruitninjafree
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_halfbrick_fruitninjafree_MortarGCMBroadcastReceiver extends Receiver{}{
	app in com_halfbrick_fruitninjafree
	intentFilter = IntentFilter2
	compPermissions = SEND
	no compUsesPermissions
}

one sig com_halfbrick_fruitninjafree_MortarGameActivity extends Activity{}{
	app in com_halfbrick_fruitninjafree
	intentFilter = IntentFilter3
	no compPermissions
	no compUsesPermissions
}

one sig com_halfbrick_fruitninjafree_MraidActivity extends Activity{}{
	app in com_halfbrick_fruitninjafree
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_halfbrick_fruitninjafree_MraidBrowser extends Activity{}{
	app in com_halfbrick_fruitninjafree
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_halfbrick_fruitninjafree_MraidVideoPlayerActivity extends Activity{}{
	app in com_halfbrick_fruitninjafree
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_halfbrick_fruitninjafree_VideoPlayer extends Activity{}{
	app in com_halfbrick_fruitninjafree
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_halfbrick_fruitninjafree_VungleAdvert extends Activity{}{
	app in com_halfbrick_fruitninjafree
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = IN_APP_NOTIFY_A + PURCHASE_STATE_CHANGED_A + RESPONSE_CODE_A
	no categories
	no data
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = RECEIVE_A + REGISTRATION_A
	categories = fruitninjafree_C
	no data
}

one sig IntentFilter3 extends IntentFilter{}{
	actions = VIEW_A
	categories = BROWSABLE_C + DEFAULT_C
	data = NoMimeYesScheme
}


pred show(){
#Application=1
//#Component=19
#IntentFilter=3
no Intent
#Data=4
}
run show
