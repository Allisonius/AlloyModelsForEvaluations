open appDeclaration

one sig com_powerje_nyan extends Application{}{
	no usesPermissions
	no appPermissions
	no APIPermissions
}

one sig com_powerje_nyan_NyanActivity extends Activity{}{
	app in com_powerje_nyan
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_powerje_nyan_NyanPaper extends Service{}{
	app in com_powerje_nyan
	intentFilter = IntentFilter1
	compPermissions = BIND_WALLPAPER
	no compUsesPermissions
}

one sig com_powerje_nyan_NyanSettings extends Activity{}{
	app in com_powerje_nyan
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = WallpaperService_A
	no categories
	no data
}


pred show(){
#Application=1
#Component=3
#IntentFilter=1
no Intent
#Data=4
}
run show
