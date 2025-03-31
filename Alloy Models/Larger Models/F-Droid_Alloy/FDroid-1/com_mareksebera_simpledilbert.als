open appDeclaration

one sig com_mareksebera_simpledilbert extends Application{}{
	usesPermissions = INTERNET + WRITE_EXTERNAL_STORAGE
	no appPermissions
	APIPermissions = INTERNET + WRITE_EXTERNAL_STORAGE
}

one sig com_mareksebera_simpledilbert_DilbertFavoritedActivity extends Activity{}{
	app in com_mareksebera_simpledilbert
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_mareksebera_simpledilbert_DilbertFragmentActivity extends Activity{}{
	app in com_mareksebera_simpledilbert
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_mareksebera_simpledilbert_DilbertPreferencesActivity extends Activity{}{
	app in com_mareksebera_simpledilbert
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_mareksebera_simpledilbert_DownloadManagerBroadcastReceiver extends Receiver{}{
	app in com_mareksebera_simpledilbert
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig com_mareksebera_simpledilbert_FolderPickerActivity extends Activity{}{
	app in com_mareksebera_simpledilbert
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_mareksebera_simpledilbert_WidgetProvider extends Receiver{}{
	app in com_mareksebera_simpledilbert
	intentFilter = IntentFilter3
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = VIEW_A
	categories = BROWSABLE_C + DEFAULT_C
	data = NoMimeYesScheme + NoMimeYesScheme + NoMimeYesScheme + NoMimeYesScheme
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = DOWNLOAD_COMPLETE_A
	no categories
	no data
}

one sig IntentFilter3 extends IntentFilter{}{
	actions = APPWIDGET_UPDATE_A + DISPLAY_A + LATEST_A + NEXT_A + PREVIOUS_A + RANDOM_A + REFRESH_A
	no categories
	no data
}


pred show(){
#Application=1
#Component=6
#IntentFilter=3
no Intent
#Data=4
}
run show
