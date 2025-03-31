open appDeclaration

one sig com_sweetiepiggy_everylocale extends Application{}{
	usesPermissions = CHANGE_CONFIGURATION
	no appPermissions
	no APIPermissions
}

one sig com_sweetiepiggy_everylocale_AboutActivity extends Activity{}{
	app in com_sweetiepiggy_everylocale
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_sweetiepiggy_everylocale_EveryLocaleActivity extends Activity{}{
	app in com_sweetiepiggy_everylocale
	no intentFilter
	no compPermissions
	no compUsesPermissions
}


pred show(){
#Application=1
#Component=2
#IntentFilter=0
no Intent
#Data=4
}
run show
