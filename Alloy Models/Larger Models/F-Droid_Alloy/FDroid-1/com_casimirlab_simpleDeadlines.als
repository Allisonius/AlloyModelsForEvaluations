open appDeclaration

one sig com_casimirlab_simpleDeadlines extends Application{}{
	usesPermissions = RECEIVE_BOOT_COMPLETED
	no appPermissions
	no APIPermissions
}

one sig com_casimirlab_simpleDeadlines_DeadlineEditor extends Activity{}{
	app in com_casimirlab_simpleDeadlines
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_casimirlab_simpleDeadlines_DeadlinesExtension extends Service{}{
	app in com_casimirlab_simpleDeadlines
	intentFilter = IntentFilter2
	compPermissions = READ_EXTENSION_DATA
	no compUsesPermissions
}

one sig com_casimirlab_simpleDeadlines_MainActivity extends Activity{}{
	app in com_casimirlab_simpleDeadlines
	intentFilter = IntentFilter3
	no compPermissions
	no compUsesPermissions
}

one sig com_casimirlab_simpleDeadlines_NotificationCenter extends Receiver{}{
	app in com_casimirlab_simpleDeadlines
	intentFilter = IntentFilter4
	no compPermissions
	no compUsesPermissions
}

one sig com_casimirlab_simpleDeadlines_Settings extends Activity{}{
	app in com_casimirlab_simpleDeadlines
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = VIEW_A
	categories = BROWSABLE_C + DEFAULT_C
	data = NoMimeYesScheme
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = Extension_A
	no categories
	no data
}

one sig IntentFilter3 extends IntentFilter{}{
	actions = VIEW_A
	categories = DEFAULT_C
	data = NoMimeYesScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme
}

one sig IntentFilter4 extends IntentFilter{}{
	actions = ACTION_HIDE_A + ACTION_SET_A + ACTION_SHOW_A + ACTION_TOGGLE_A + BOOT_COMPLETED_A
	categories = DEFAULT_C
	no data
}


pred show(){
#Application=1
#Component=5
#IntentFilter=4
no Intent
#Data=4
}
run show
