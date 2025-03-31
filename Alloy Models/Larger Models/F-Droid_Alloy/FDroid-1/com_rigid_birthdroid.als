open appDeclaration

one sig com_rigid_birthdroid extends Application{}{
	usesPermissions = READ_CONTACTS
	no appPermissions
	no APIPermissions
}

one sig com_rigid_birthdroid_AboutActivity extends Activity{}{
	app in com_rigid_birthdroid
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_rigid_birthdroid_BirthdroidActivity extends Activity{}{
	app in com_rigid_birthdroid
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_rigid_birthdroid_BirthdroidWidget extends Receiver{}{
	app in com_rigid_birthdroid
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_rigid_birthdroid_PreferencesActivity extends Activity{}{
	app in com_rigid_birthdroid
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = APPWIDGET_UPDATE_A + CLICK_A + PREFS_UPDATE_A
	no categories
	no data
}


pred show(){
#Application=1
#Component=4
#IntentFilter=1
no Intent
#Data=4
}
run show
