open appDeclaration

one sig com_scottmain_android_searchlight extends Application{}{
	usesPermissions = CAMERA
	no appPermissions
	APIPermissions = CAMERA
}

one sig com_scottmain_android_searchlight_SearchLight extends Activity{}{
	app in com_scottmain_android_searchlight
	no intentFilter
	no compPermissions
	compUsesPermissions = CAMERA
}


pred show(){
#Application=1
#Component=1
#IntentFilter=0
no Intent
#Data=4
}
run show
