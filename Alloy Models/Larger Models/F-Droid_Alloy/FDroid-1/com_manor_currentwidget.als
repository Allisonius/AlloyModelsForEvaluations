open appDeclaration

one sig com_manor_currentwidget extends Application{}{
	usesPermissions = WRITE_EXTERNAL_STORAGE + VIBRATE
	no appPermissions
	APIPermissions = VIBRATE
}

one sig com_manor_currentwidget_CurrentWidget extends Receiver{}{
	app in com_manor_currentwidget
	intentFilter = IntentFilter1
	no compPermissions
	compUsesPermissions = VIBRATE
}

one sig com_manor_currentwidget_CurrentWidgetConfigure extends Activity{}{
	app in com_manor_currentwidget
	intentFilter = IntentFilter2
	no compPermissions
	compUsesPermissions = VIBRATE
}

one sig com_manor_currentwidget_CurrentWidgetText extends Receiver{}{
	app in com_manor_currentwidget
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_manor_currentwidget_ExcludedAppsActivity extends Activity{}{
	app in com_manor_currentwidget
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_manor_currentwidget_GraphicalActivity extends Activity{}{
	app in com_manor_currentwidget
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_manor_currentwidget_ResultsActivity extends Activity{}{
	app in com_manor_currentwidget
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
	actions = APPWIDGET_CONFIGURE_A + MAIN_A
	categories = LAUNCHER_C
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
