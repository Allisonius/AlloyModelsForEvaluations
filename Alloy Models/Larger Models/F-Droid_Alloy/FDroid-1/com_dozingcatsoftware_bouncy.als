open appDeclaration

one sig com_dozingcatsoftware_bouncy extends Application{}{
	no usesPermissions
	no appPermissions
	no APIPermissions
}

one sig com_dozingcatsoftware_bouncy_AboutActivity extends Activity{}{
	app in com_dozingcatsoftware_bouncy
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_dozingcatsoftware_bouncy_BouncyActivity extends Activity{}{
	app in com_dozingcatsoftware_bouncy
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_dozingcatsoftware_bouncy_BouncyPreferences extends Activity{}{
	app in com_dozingcatsoftware_bouncy
	no intentFilter
	no compPermissions
	no compUsesPermissions
}


pred show(){
#Application=1
#Component=3
#IntentFilter=0
no Intent
#Data=4
}
run show
