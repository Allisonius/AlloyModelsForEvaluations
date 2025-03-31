open appDeclaration

one sig com_nolanlawson_logcat extends Application{}{
	usesPermissions = READ_LOGS + WRITE_EXTERNAL_STORAGE + ACCESS_SUPERUSER
	no appPermissions
	no APIPermissions
}

one sig com_nolanlawson_logcat_AboutActivity extends Activity{}{
	app in com_nolanlawson_logcat
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_nolanlawson_logcat_CrazyLoggerService extends Service{}{
	app in com_nolanlawson_logcat
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_nolanlawson_logcat_LogcatActivity extends Activity{}{
	app in com_nolanlawson_logcat
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_nolanlawson_logcat_LogcatRecordingService extends Service{}{
	app in com_nolanlawson_logcat
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_nolanlawson_logcat_RecordingWidgetProvider extends Receiver{}{
	app in com_nolanlawson_logcat
	intentFilter = IntentFilter2 + IntentFilter3 + IntentFilter4
	no compPermissions
	no compUsesPermissions
}

one sig com_nolanlawson_logcat_SettingsActivity extends Activity{}{
	app in com_nolanlawson_logcat
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_nolanlawson_logcat_ShowRecordLogDialogActivity extends Activity{}{
	app in com_nolanlawson_logcat
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = LAUNCH_A
	categories = DEFAULT_C
	no data
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = APPWIDGET_UPDATE_A
	no categories
	data = NoMimeYesScheme
}

one sig IntentFilter3 extends IntentFilter{}{
	actions = APPWIDGET_UPDATE_A
	no categories
	no data
}

one sig IntentFilter4 extends IntentFilter{}{
	actions = RECORD_OR_STOP_A
	no categories
	data = NoMimeYesScheme
}


pred show(){
#Application=1
#Component=7
#IntentFilter=4
no Intent
#Data=4
}
run show
