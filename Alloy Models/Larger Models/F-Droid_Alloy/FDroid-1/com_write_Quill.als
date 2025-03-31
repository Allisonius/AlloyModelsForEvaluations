open appDeclaration

one sig com_write_Quill extends Application{}{
	usesPermissions = WRITE_EXTERNAL_STORAGE + READ_CONTACTS + READ_PROFILE + INTERNET + AUTHENTICATE_ACCOUNTS + GET_ACCOUNTS
	no appPermissions
	APIPermissions = INTERNET + AUTHENTICATE_ACCOUNTS + GET_ACCOUNTS
}

one sig com_write_Quill_AccountPreferences extends Activity{}{
	app in com_write_Quill
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_write_Quill_AuthenticatorService extends Service{}{
	app in com_write_Quill
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_write_Quill_BookshelfActivity extends Activity{}{
	app in com_write_Quill
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_write_Quill_CropImage extends Activity{}{
	app in com_write_Quill
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_write_Quill_ExportActivity extends Activity{}{
	app in com_write_Quill
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_write_Quill_FilePickerActivity extends Activity{}{
	app in com_write_Quill
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_write_Quill_HelpBrowser extends Activity{}{
	app in com_write_Quill
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_write_Quill_ImageActivity extends Activity{}{
	app in com_write_Quill
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_write_Quill_ImportBackupActivity extends Activity{}{
	app in com_write_Quill
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig com_write_Quill_LoginActivity extends Activity{}{
	app in com_write_Quill
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET + AUTHENTICATE_ACCOUNTS
}

one sig com_write_Quill_NewAccountActivity extends Activity{}{
	app in com_write_Quill
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET
}

one sig com_write_Quill_Preferences extends Activity{}{
	app in com_write_Quill
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_write_Quill_QuillWriterActivity extends Activity{}{
	app in com_write_Quill
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_write_Quill_SyncActivity extends Activity{}{
	app in com_write_Quill
	no intentFilter
	no compPermissions
	compUsesPermissions = AUTHENTICATE_ACCOUNTS + GET_ACCOUNTS
}

one sig com_write_Quill_TagsListActivity extends Activity{}{
	app in com_write_Quill
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_write_Quill_TestActivity extends Activity{}{
	app in com_write_Quill
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_write_Quill_ThumbnailActivity extends Activity{}{
	app in com_write_Quill
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_write_Quill_UpdateActivity extends Activity{}{
	app in com_write_Quill
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = AccountAuthenticator_A
	no categories
	no data
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = EDIT_A + PICK_A + VIEW_A
	categories = BROWSABLE_C + DEFAULT_C
	data = NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeYesScheme
}


pred show(){
#Application=1
//#Component=18
#IntentFilter=2
no Intent
#Data=4
}
run show
