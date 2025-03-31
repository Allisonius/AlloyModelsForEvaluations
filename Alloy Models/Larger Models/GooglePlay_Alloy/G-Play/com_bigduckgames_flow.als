open appDeclaration

one sig com_bigduckgames_flow extends Application{}{
	usesPermissions = BILLING + INTERNET + ACCESS_NETWORK_STATE + READ_PHONE_STATE + WRITE_EXTERNAL_STORAGE
	no appPermissions
	no APIPermissions
}

one sig com_bigduckgames_flow_AdActivity extends Activity{}{
	app in com_bigduckgames_flow
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_bigduckgames_flow_BillingReceiver extends Receiver{}{
	app in com_bigduckgames_flow
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_bigduckgames_flow_BillingService extends Service{}{
	app in com_bigduckgames_flow
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_bigduckgames_flow_MMActivity extends Activity{}{
	app in com_bigduckgames_flow
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_bigduckgames_flow_MoPubActivity extends Activity{}{
	app in com_bigduckgames_flow
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_bigduckgames_flow_MoreGamesWebView extends Activity{}{
	app in com_bigduckgames_flow
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_bigduckgames_flow_MraidActivity extends Activity{}{
	app in com_bigduckgames_flow
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_bigduckgames_flow_MraidBrowser extends Activity{}{
	app in com_bigduckgames_flow
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_bigduckgames_flow_MraidVideoPlayerActivity extends Activity{}{
	app in com_bigduckgames_flow
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_bigduckgames_flow_ResponseReceiver extends Receiver{}{
	app in com_bigduckgames_flow
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig com_bigduckgames_flow_VideoPlayer extends Activity{}{
	app in com_bigduckgames_flow
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_bigduckgames_flow_flow extends Activity{}{
	app in com_bigduckgames_flow
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
	actions = NOTIFY_A
	no categories
	no data
}


pred show(){
#Application=1
//#Component=12
#IntentFilter=2
no Intent
#Data=4
}
run show
