open appDeclaration

one sig com_king_petrescuesaga extends Application{}{
	usesPermissions = BILLING + INTERNET + ACCESS_NETWORK_STATE + ACCESS_WIFI_STATE
	no appPermissions
	APIPermissions = INTERNET
}

one sig com_king_petrescuesaga_BillingReceiver extends Receiver{}{
	app in com_king_petrescuesaga
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_king_petrescuesaga_BillingService extends Service{}{
	app in com_king_petrescuesaga
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_king_petrescuesaga_CampaignTrackingService extends Service{}{
	app in com_king_petrescuesaga
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_king_petrescuesaga_LoginActivity extends Activity{}{
	app in com_king_petrescuesaga
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_king_petrescuesaga_PetRescueSagaActivity extends Activity{}{
	app in com_king_petrescuesaga
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_king_petrescuesaga_ReferrerReceiver extends Receiver{}{
	app in com_king_petrescuesaga
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = IN_APP_NOTIFY_A + PURCHASE_STATE_CHANGED_A + RESPONSE_CODE_A
	no categories
	no data
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = INSTALL_REFERRER_A
	no categories
	no data
}


pred show(){
#Application=1
#Component=6
#IntentFilter=2
no Intent
#Data=4
}
run show
