open appDeclaration

one sig com_king_candycrushsaga extends Application{}{
	usesPermissions = BILLING + RECEIVE + INTERNET + ACCESS_NETWORK_STATE + ACCESS_WIFI_STATE + GET_ACCOUNTS + WAKE_LOCK + C2D_MESSAGE + RECEIVE
	no appPermissions
	APIPermissions = INTERNET
}

one sig com_king_candycrushsaga_AlarmService extends Service{}{
	app in com_king_candycrushsaga
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_king_candycrushsaga_BillingReceiver extends Receiver{}{
	app in com_king_candycrushsaga
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_king_candycrushsaga_BillingService extends Service{}{
	app in com_king_candycrushsaga
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_king_candycrushsaga_CampaignTrackingService extends Service{}{
	app in com_king_candycrushsaga
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_king_candycrushsaga_CandyCrushSagaActivity extends Activity{}{
	app in com_king_candycrushsaga
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig com_king_candycrushsaga_GCMBroadcastReceiver extends Receiver{}{
	app in com_king_candycrushsaga
	intentFilter = IntentFilter3
	compPermissions = SEND
	no compUsesPermissions
}

one sig com_king_candycrushsaga_GCMIntentService extends Service{}{
	app in com_king_candycrushsaga
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_king_candycrushsaga_LoginActivity extends Activity{}{
	app in com_king_candycrushsaga
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_king_candycrushsaga_MyAlarmService extends Service{}{
	app in com_king_candycrushsaga
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_king_candycrushsaga_ReferrerReceiver extends Receiver{}{
	app in com_king_candycrushsaga
	intentFilter = IntentFilter4
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = IN_APP_NOTIFY_A + PURCHASE_STATE_CHANGED_A + RESPONSE_CODE_A
	no categories
	no data
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = VIEW_A
	categories = BROWSABLE_C + DEFAULT_C
	data = NoMimeYesScheme + NoMimeYesScheme + NoMimeYesScheme + NoMimeYesScheme
}

one sig IntentFilter3 extends IntentFilter{}{
	actions = RECEIVE_A + REGISTRATION_A
	categories = candycrushsaga_C
	no data
}

one sig IntentFilter4 extends IntentFilter{}{
	actions = INSTALL_REFERRER_A
	no categories
	no data
}


pred show(){
#Application=1
//#Component=10
#IntentFilter=4
no Intent
#Data=4
}
run show
