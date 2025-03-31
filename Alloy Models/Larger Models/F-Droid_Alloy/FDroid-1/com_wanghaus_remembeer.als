open appDeclaration

one sig com_wanghaus_remembeer extends Application{}{
	usesPermissions = INTERNET + VIBRATE + WRITE_EXTERNAL_STORAGE
	no appPermissions
	APIPermissions = INTERNET + VIBRATE
}

one sig com_wanghaus_remembeer_AddBeer extends Activity{}{
	app in com_wanghaus_remembeer
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET
}

one sig com_wanghaus_remembeer_AddBeerAppWidgetProvider extends Activity{}{
	app in com_wanghaus_remembeer
	intentFilter = IntentFilter1 + IntentFilter1 + IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_wanghaus_remembeer_AddBeerDone extends Activity{}{
	app in com_wanghaus_remembeer
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_wanghaus_remembeer_BeerInfo extends Activity{}{
	app in com_wanghaus_remembeer
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_wanghaus_remembeer_Config extends Activity{}{
	app in com_wanghaus_remembeer
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_wanghaus_remembeer_ConfigureTwitter extends Activity{}{
	app in com_wanghaus_remembeer
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_wanghaus_remembeer_ConfigureWebService extends Activity{}{
	app in com_wanghaus_remembeer
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_wanghaus_remembeer_History extends Activity{}{
	app in com_wanghaus_remembeer
	intentFilter = IntentFilter2
	no compPermissions
	compUsesPermissions = INTERNET
}

one sig com_wanghaus_remembeer_ImportExport extends Activity{}{
	app in com_wanghaus_remembeer
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_wanghaus_remembeer_NotifyService extends Service{}{
	app in com_wanghaus_remembeer
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_wanghaus_remembeer_PublishToWebService extends Activity{}{
	app in com_wanghaus_remembeer
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_wanghaus_remembeer_Stats extends Activity{}{
	app in com_wanghaus_remembeer
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = APPWIDGET_UPDATE_A
	no categories
	no data
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = SEARCH_A
	categories = DEFAULT_C
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
