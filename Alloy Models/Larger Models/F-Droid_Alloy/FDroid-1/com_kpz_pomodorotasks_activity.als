open appDeclaration

one sig com_kpz_pomodorotasks_activity extends Application{}{
	usesPermissions = VIBRATE + WAKE_LOCK
	no appPermissions
	APIPermissions = VIBRATE + WAKE_LOCK
}

one sig com_kpz_pomodorotasks_activity_HelpActivity extends Activity{}{
	app in com_kpz_pomodorotasks_activity
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_kpz_pomodorotasks_activity_NotifyingService extends Service{}{
	app in com_kpz_pomodorotasks_activity
	no intentFilter
	no compPermissions
	compUsesPermissions = VIBRATE + WAKE_LOCK
}

one sig com_kpz_pomodorotasks_activity_PreferencesActivity extends Activity{}{
	app in com_kpz_pomodorotasks_activity
	no intentFilter
	no compPermissions
	compUsesPermissions = WAKE_LOCK
}

one sig com_kpz_pomodorotasks_activity_TaskBrowserActivity extends Activity{}{
	app in com_kpz_pomodorotasks_activity
	no intentFilter
	no compPermissions
	compUsesPermissions = VIBRATE + WAKE_LOCK
}

one sig com_kpz_pomodorotasks_activity_TaskEditActivity extends Activity{}{
	app in com_kpz_pomodorotasks_activity
	no intentFilter
	no compPermissions
	no compUsesPermissions
}


pred show(){
#Application=1
#Component=5
#IntentFilter=0
no Intent
#Data=4
}
run show
