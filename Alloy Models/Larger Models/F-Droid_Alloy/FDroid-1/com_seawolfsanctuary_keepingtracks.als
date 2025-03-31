open appDeclaration

one sig com_seawolfsanctuary_keepingtracks extends Application{}{
	usesPermissions = INTERNET + WRITE_EXTERNAL_STORAGE + ACCESS_COARSE_LOCATION + ACCESS_FINE_LOCATION + ACCESS_MOCK_LOCATION + READ_LOGS
	no appPermissions
	APIPermissions = INTERNET + ACCESS_COARSE_LOCATION + ACCESS_FINE_LOCATION
}

one sig com_seawolfsanctuary_keepingtracks_AddActivity extends Activity{}{
	app in com_seawolfsanctuary_keepingtracks
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET
}

one sig com_seawolfsanctuary_keepingtracks_CheckinActivity extends Activity{}{
	app in com_seawolfsanctuary_keepingtracks
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET + ACCESS_COARSE_LOCATION + ACCESS_FINE_LOCATION
}

one sig com_seawolfsanctuary_keepingtracks_ClassesUsed extends Activity{}{
	app in com_seawolfsanctuary_keepingtracks
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_seawolfsanctuary_keepingtracks_CrashReportDialog extends Activity{}{
	app in com_seawolfsanctuary_keepingtracks
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_seawolfsanctuary_keepingtracks_DataFileActivity extends Activity{}{
	app in com_seawolfsanctuary_keepingtracks
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET
}

one sig com_seawolfsanctuary_keepingtracks_FavouriteStations extends Activity{}{
	app in com_seawolfsanctuary_keepingtracks
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_seawolfsanctuary_keepingtracks_JourneysByMonth extends Activity{}{
	app in com_seawolfsanctuary_keepingtracks
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_seawolfsanctuary_keepingtracks_ListSavedActivity extends Activity{}{
	app in com_seawolfsanctuary_keepingtracks
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET
}

one sig com_seawolfsanctuary_keepingtracks_MenuActivity extends Activity{}{
	app in com_seawolfsanctuary_keepingtracks
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET
}

one sig com_seawolfsanctuary_keepingtracks_SetupActivity extends Activity{}{
	app in com_seawolfsanctuary_keepingtracks
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_seawolfsanctuary_keepingtracks_StatsActivity extends Activity{}{
	app in com_seawolfsanctuary_keepingtracks
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_seawolfsanctuary_keepingtracks_UserPrefsActivity extends Activity{}{
	app in com_seawolfsanctuary_keepingtracks
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET
}


pred show(){
#Application=1
//#Component=12
#IntentFilter=0
no Intent
#Data=4
}
run show
