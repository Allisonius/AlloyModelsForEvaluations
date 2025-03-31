open appDeclaration

one sig com_mobilityware_solitaire extends Application{}{
	usesPermissions = INTERNET + READ_PHONE_STATE + ACCESS_NETWORK_STATE + VIBRATE + WRITE_EXTERNAL_STORAGE
	no appPermissions
	APIPermissions = INTERNET + READ_PHONE_STATE + ACCESS_NETWORK_STATE
}

one sig com_mobilityware_solitaire_AdActivity extends Activity{}{
	app in com_mobilityware_solitaire
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_mobilityware_solitaire_AliasConfig extends Activity{}{
	app in com_mobilityware_solitaire
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET + READ_PHONE_STATE + ACCESS_NETWORK_STATE
}

one sig com_mobilityware_solitaire_FlurryFullscreenTakeoverActivity extends Activity{}{
	app in com_mobilityware_solitaire
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_mobilityware_solitaire_GSFullscreenActivity extends Activity{}{
	app in com_mobilityware_solitaire
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_mobilityware_solitaire_MobilityWeb extends Activity{}{
	app in com_mobilityware_solitaire
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_mobilityware_solitaire_Playvideo extends Activity{}{
	app in com_mobilityware_solitaire
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_mobilityware_solitaire_Preferences extends Activity{}{
	app in com_mobilityware_solitaire
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET + ACCESS_NETWORK_STATE
}

one sig com_mobilityware_solitaire_Rules extends Activity{}{
	app in com_mobilityware_solitaire
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_mobilityware_solitaire_Solitaire extends Activity{}{
	app in com_mobilityware_solitaire
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET + READ_PHONE_STATE + ACCESS_NETWORK_STATE
}

one sig com_mobilityware_solitaire_Statistics extends Activity{}{
	app in com_mobilityware_solitaire
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET + ACCESS_NETWORK_STATE
}

one sig com_mobilityware_solitaire_TapjoyReferralTracker extends Receiver{}{
	app in com_mobilityware_solitaire
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = Playvideo_A
	categories = EMBED_C
	no data
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = INSTALL_REFERRER_A
	no categories
	no data
}


pred show(){
#Application=1
//#Component=11
#IntentFilter=2
no Intent
#Data=4
}
run show
