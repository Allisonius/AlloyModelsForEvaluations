open appDeclaration

one sig com_mridang_wifiinfo extends Application{}{
	usesPermissions = INTERNET + ACCESS_NETWORK_STATE + ACCESS_WIFI_STATE
	no appPermissions
	APIPermissions = ACCESS_NETWORK_STATE + ACCESS_WIFI_STATE
}

one sig com_mridang_wifiinfo_WifiinfoWidget extends Service{}{
	app in com_mridang_wifiinfo
	intentFilter = IntentFilter1
	compPermissions = READ_EXTENSION_DATA
	compUsesPermissions = ACCESS_NETWORK_STATE + ACCESS_WIFI_STATE
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = Extension_A
	no categories
	no data
}


pred show(){
#Application=1
#Component=1
#IntentFilter=1
no Intent
#Data=4
}
run show
