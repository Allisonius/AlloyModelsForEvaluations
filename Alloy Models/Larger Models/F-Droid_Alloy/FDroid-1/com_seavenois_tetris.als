open appDeclaration

one sig com_seavenois_tetris extends Application{}{
	usesPermissions = VIBRATE
	no appPermissions
	APIPermissions = VIBRATE
}

one sig com_seavenois_tetris_AboutBackgrounds extends Activity{}{
	app in com_seavenois_tetris
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_seavenois_tetris_Changelog extends Activity{}{
	app in com_seavenois_tetris
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_seavenois_tetris_Donate extends Activity{}{
	app in com_seavenois_tetris
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_seavenois_tetris_Game extends Activity{}{
	app in com_seavenois_tetris
	no intentFilter
	no compPermissions
	compUsesPermissions = VIBRATE
}

one sig com_seavenois_tetris_HighScores extends Activity{}{
	app in com_seavenois_tetris
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_seavenois_tetris_Init extends Activity{}{
	app in com_seavenois_tetris
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_seavenois_tetris_Preferences extends Activity{}{
	app in com_seavenois_tetris
	no intentFilter
	no compPermissions
	no compUsesPermissions
}


pred show(){
#Application=1
#Component=7
#IntentFilter=0
no Intent
#Data=4
}
run show
