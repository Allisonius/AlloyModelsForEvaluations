open appDeclaration

one sig com_vlille_checker extends Application{}{
	usesPermissions = ACCESS_COARSE_LOCATION + ACCESS_FINE_LOCATION + ACCESS_WIFI_STATE + ACCESS_NETWORK_STATE + INTERNET + WRITE_EXTERNAL_STORAGE
	no appPermissions
	APIPermissions = ACCESS_COARSE_LOCATION + ACCESS_FINE_LOCATION + ACCESS_NETWORK_STATE + INTERNET
}

one sig com_vlille_checker_AboutActivity extends Activity{}{
	app in com_vlille_checker
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_vlille_checker_CrashReportDialog extends Activity{}{
	app in com_vlille_checker
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_vlille_checker_HomeActivity extends Activity{}{
	app in com_vlille_checker
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET
}

one sig com_vlille_checker_HomePreferenceActivity extends Activity{}{
	app in com_vlille_checker
	no intentFilter
	no compPermissions
	compUsesPermissions = ACCESS_COARSE_LOCATION + ACCESS_FINE_LOCATION
}


pred show(){
#Application=1
#Component=4
#IntentFilter=0
no Intent
#Data=4
}
run show
