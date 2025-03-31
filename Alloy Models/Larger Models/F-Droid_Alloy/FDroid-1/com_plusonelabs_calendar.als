open appDeclaration

one sig com_plusonelabs_calendar extends Application{}{
	usesPermissions = READ_CALENDAR
	no appPermissions
	no APIPermissions
}

one sig com_plusonelabs_calendar_AlarmReceiver extends Receiver{}{
	app in com_plusonelabs_calendar
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_plusonelabs_calendar_EnvironmentChangedReceiver extends Receiver{}{
	app in com_plusonelabs_calendar
	intentFilter = IntentFilter2 + IntentFilter3
	no compPermissions
	no compUsesPermissions
}

one sig com_plusonelabs_calendar_EventAppWidgetProvider extends Receiver{}{
	app in com_plusonelabs_calendar
	intentFilter = IntentFilter4
	no compPermissions
	no compUsesPermissions
}

one sig com_plusonelabs_calendar_EventWidgetService extends Service{}{
	app in com_plusonelabs_calendar
	no intentFilter
	compPermissions = BIND_REMOTEVIEWS
	no compUsesPermissions
}

one sig com_plusonelabs_calendar_WidgetConfigurationActivity extends Activity{}{
	app in com_plusonelabs_calendar
	intentFilter = IntentFilter5
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = BOOT_COMPLETED_A + TIMEZONE_CHANGED_A + TIME_SET_A
	no categories
	no data
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = DATE_CHANGED_A + LOCALE_CHANGED_A + TIMEZONE_CHANGED_A + TIME_SET_A
	no categories
	no data
}

one sig IntentFilter3 extends IntentFilter{}{
	actions = PROVIDER_CHANGED_A
	no categories
	data = NoMimeYesScheme + NoMimeNoScheme
}

one sig IntentFilter4 extends IntentFilter{}{
	actions = APPWIDGET_UPDATE_A
	no categories
	no data
}

one sig IntentFilter5 extends IntentFilter{}{
	actions = APPWIDGET_CONFIGURE_A
	no categories
	no data
}


pred show(){
#Application=1
#Component=5
#IntentFilter=5
no Intent
#Data=4
}
run show
