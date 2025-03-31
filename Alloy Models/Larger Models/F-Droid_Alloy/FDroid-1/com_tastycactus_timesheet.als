open appDeclaration

one sig com_tastycactus_timesheet extends Application{}{
	usesPermissions = WRITE_EXTERNAL_STORAGE
	no appPermissions
	no APIPermissions
}

one sig com_tastycactus_timesheet_ExportActivity extends Activity{}{
	app in com_tastycactus_timesheet
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_tastycactus_timesheet_TaskEditActivity extends Activity{}{
	app in com_tastycactus_timesheet
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_tastycactus_timesheet_TimeEntriesActivity extends Activity{}{
	app in com_tastycactus_timesheet
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_tastycactus_timesheet_TimeEntryEditActivity extends Activity{}{
	app in com_tastycactus_timesheet
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_tastycactus_timesheet_TimesheetActivity extends Activity{}{
	app in com_tastycactus_timesheet
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_tastycactus_timesheet_TimesheetAppWidgetProvider extends Receiver{}{
	app in com_tastycactus_timesheet
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_tastycactus_timesheet_TimesheetPreferences extends Activity{}{
	app in com_tastycactus_timesheet
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = APPWIDGET_UPDATE_A
	no categories
	no data
}


pred show(){
#Application=1
#Component=7
#IntentFilter=1
no Intent
#Data=4
}
run show
