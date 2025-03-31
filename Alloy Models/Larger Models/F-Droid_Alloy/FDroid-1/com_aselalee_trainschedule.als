open appDeclaration

one sig com_aselalee_trainschedule extends Application{}{
	usesPermissions = INTERNET + ACCESS_NETWORK_STATE
	no appPermissions
	no APIPermissions
}

one sig com_aselalee_trainschedule_FavouritesActivity extends Activity{}{
	app in com_aselalee_trainschedule
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_aselalee_trainschedule_HistoryActivity extends Activity{}{
	app in com_aselalee_trainschedule
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_aselalee_trainschedule_ResultViewActivity extends Activity{}{
	app in com_aselalee_trainschedule
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_aselalee_trainschedule_TabHostActivity extends Activity{}{
	app in com_aselalee_trainschedule
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_aselalee_trainschedule_TrainScheduleActivity extends Activity{}{
	app in com_aselalee_trainschedule
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
