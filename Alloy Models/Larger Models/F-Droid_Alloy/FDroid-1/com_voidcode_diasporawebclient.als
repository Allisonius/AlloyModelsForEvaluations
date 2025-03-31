open appDeclaration

one sig com_voidcode_diasporawebclient extends Application{}{
	usesPermissions = INTERNET + ACCESS_NETWORK_STATE
	no appPermissions
	APIPermissions = ACCESS_NETWORK_STATE
}

one sig com_voidcode_diasporawebclient_MainActivity extends Activity{}{
	app in com_voidcode_diasporawebclient
	no intentFilter
	no compPermissions
	compUsesPermissions = ACCESS_NETWORK_STATE
}

one sig com_voidcode_diasporawebclient_PodSettingsActivity extends Activity{}{
	app in com_voidcode_diasporawebclient
	no intentFilter
	no compPermissions
	compUsesPermissions = ACCESS_NETWORK_STATE
}

one sig com_voidcode_diasporawebclient_SetupInternetActivity extends Activity{}{
	app in com_voidcode_diasporawebclient
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_voidcode_diasporawebclient_ShareActivity extends Activity{}{
	app in com_voidcode_diasporawebclient
	intentFilter = IntentFilter1
	no compPermissions
	compUsesPermissions = ACCESS_NETWORK_STATE
}

one sig com_voidcode_diasporawebclient_TranslateActivity extends Activity{}{
	app in com_voidcode_diasporawebclient
	no intentFilter
	no compPermissions
	compUsesPermissions = ACCESS_NETWORK_STATE
}

one sig com_voidcode_diasporawebclient_WidgetActivity extends Receiver{}{
	app in com_voidcode_diasporawebclient
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = SEND_A
	categories = DEFAULT_C
	data = YesMimeNoScheme
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = APPWIDGET_UPDATE_A
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
