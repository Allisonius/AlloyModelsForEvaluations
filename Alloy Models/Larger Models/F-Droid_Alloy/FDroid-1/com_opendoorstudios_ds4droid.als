open appDeclaration

one sig com_opendoorstudios_ds4droid extends Application{}{
	usesPermissions = WRITE_EXTERNAL_STORAGE + INTERNET + RECORD_AUDIO
	no appPermissions
	no APIPermissions
}

one sig com_opendoorstudios_ds4droid_About extends Activity{}{
	app in com_opendoorstudios_ds4droid
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_opendoorstudios_ds4droid_ButtonLayoutEditor extends Activity{}{
	app in com_opendoorstudios_ds4droid
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_opendoorstudios_ds4droid_Cheats extends Activity{}{
	app in com_opendoorstudios_ds4droid
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_opendoorstudios_ds4droid_CollectionActivity extends Activity{}{
	app in com_opendoorstudios_ds4droid
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_opendoorstudios_ds4droid_FileDialog extends Activity{}{
	app in com_opendoorstudios_ds4droid
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_opendoorstudios_ds4droid_KeyMapSettings extends Activity{}{
	app in com_opendoorstudios_ds4droid
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_opendoorstudios_ds4droid_MainActivity extends Activity{}{
	app in com_opendoorstudios_ds4droid
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_opendoorstudios_ds4droid_Settings extends Activity{}{
	app in com_opendoorstudios_ds4droid
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = PICK_A
	categories = DEFAULT_C
	no data
}


pred show(){
#Application=1
//#Component=8
#IntentFilter=1
no Intent
#Data=4
}
run show
