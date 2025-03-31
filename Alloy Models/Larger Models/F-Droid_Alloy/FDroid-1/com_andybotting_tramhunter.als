open appDeclaration

one sig com_andybotting_tramhunter extends Application{}{
	usesPermissions = INTERNET + ACCESS_COARSE_LOCATION + ACCESS_FINE_LOCATION + ACCESS_LOCATION_EXTRA_COMMANDS + READ_PHONE_STATE + WRITE_EXTERNAL_STORAGE + VIBRATE
	no appPermissions
	APIPermissions = ACCESS_COARSE_LOCATION + ACCESS_FINE_LOCATION + READ_PHONE_STATE + VIBRATE
}

one sig com_andybotting_tramhunter_FavouriteActivity extends Activity{}{
	app in com_andybotting_tramhunter
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_andybotting_tramhunter_HomeActivity extends Activity{}{
	app in com_andybotting_tramhunter
	no intentFilter
	no compPermissions
	compUsesPermissions = ACCESS_COARSE_LOCATION + ACCESS_FINE_LOCATION
}

one sig com_andybotting_tramhunter_NearStopsActivity extends Activity{}{
	app in com_andybotting_tramhunter
	no intentFilter
	no compPermissions
	compUsesPermissions = ACCESS_COARSE_LOCATION + ACCESS_FINE_LOCATION
}

one sig com_andybotting_tramhunter_NetworkMapActivity extends Activity{}{
	app in com_andybotting_tramhunter
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_andybotting_tramhunter_RoutesListActivity extends Activity{}{
	app in com_andybotting_tramhunter
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_andybotting_tramhunter_SearchActivity extends Activity{}{
	app in com_andybotting_tramhunter
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_andybotting_tramhunter_SettingsActivity extends Activity{}{
	app in com_andybotting_tramhunter
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_andybotting_tramhunter_StopDetailsActivity extends Activity{}{
	app in com_andybotting_tramhunter
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_andybotting_tramhunter_StopMapActivity extends Activity{}{
	app in com_andybotting_tramhunter
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_andybotting_tramhunter_StopsListActivity extends Activity{}{
	app in com_andybotting_tramhunter
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_andybotting_tramhunter_TramHunter extends Activity{}{
	app in com_andybotting_tramhunter
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_andybotting_tramhunter_TramNotification extends Receiver{}{
	app in com_andybotting_tramhunter
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig com_andybotting_tramhunter_TramRunActivity extends Activity{}{
	app in com_andybotting_tramhunter
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = SEARCH_A
	categories = DEFAULT_C
	no data
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = intentname_A
	no categories
	no data
}


pred show(){
#Application=1
//#Component=13
#IntentFilter=2
no Intent
#Data=4
}
run show
