open appDeclaration

one sig com_aripuca_tracker extends Application{}{
	usesPermissions = ACCESS_FINE_LOCATION + ACCESS_COARSE_LOCATION + WRITE_EXTERNAL_STORAGE + INTERNET + ACCESS_NETWORK_STATE + VIBRATE
	no appPermissions
	APIPermissions = ACCESS_FINE_LOCATION + ACCESS_COARSE_LOCATION + ACCESS_NETWORK_STATE + VIBRATE
}

one sig com_aripuca_tracker_AppService extends Service{}{
	app in com_aripuca_tracker
	no intentFilter
	no compPermissions
	compUsesPermissions = ACCESS_COARSE_LOCATION + ACCESS_FINE_LOCATION + VIBRATE
}

one sig com_aripuca_tracker_CompassActivity extends Activity{}{
	app in com_aripuca_tracker
	no intentFilter
	no compPermissions
	compUsesPermissions = ACCESS_COARSE_LOCATION + ACCESS_FINE_LOCATION + VIBRATE
}

one sig com_aripuca_tracker_MainActivity extends Activity{}{
	app in com_aripuca_tracker
	no intentFilter
	no compPermissions
	compUsesPermissions = ACCESS_NETWORK_STATE + ACCESS_COARSE_LOCATION + ACCESS_FINE_LOCATION + VIBRATE
}

one sig com_aripuca_tracker_MyMapActivity extends Activity{}{
	app in com_aripuca_tracker
	no intentFilter
	no compPermissions
	compUsesPermissions = ACCESS_COARSE_LOCATION + ACCESS_FINE_LOCATION + VIBRATE
}

one sig com_aripuca_tracker_NotificationActivity extends Activity{}{
	app in com_aripuca_tracker
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_aripuca_tracker_ScheduledTracksListActivity extends Activity{}{
	app in com_aripuca_tracker
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_aripuca_tracker_SettingsActivity extends Activity{}{
	app in com_aripuca_tracker
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_aripuca_tracker_TrackChartActivity extends Activity{}{
	app in com_aripuca_tracker
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_aripuca_tracker_TrackDetailsActivity extends Activity{}{
	app in com_aripuca_tracker
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_aripuca_tracker_TrackpointsListActivity extends Activity{}{
	app in com_aripuca_tracker
	no intentFilter
	no compPermissions
	compUsesPermissions = ACCESS_COARSE_LOCATION + ACCESS_FINE_LOCATION + VIBRATE
}

one sig com_aripuca_tracker_TracksListActivity extends Activity{}{
	app in com_aripuca_tracker
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_aripuca_tracker_TracksTabActivity extends Activity{}{
	app in com_aripuca_tracker
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_aripuca_tracker_WaypointsListActivity extends Activity{}{
	app in com_aripuca_tracker
	no intentFilter
	no compPermissions
	compUsesPermissions = ACCESS_COARSE_LOCATION + ACCESS_FINE_LOCATION + VIBRATE
}


pred show(){
#Application=1
//#Component=13
#IntentFilter=0
no Intent
#Data=4
}
run show
