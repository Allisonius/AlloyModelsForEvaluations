open appDeclaration

one sig com_tunes_viewer extends Application{}{
	usesPermissions = INTERNET + WRITE_EXTERNAL_STORAGE + WAKE_LOCK
	no appPermissions
	APIPermissions = INTERNET + WAKE_LOCK
}

one sig com_tunes_viewer_BookmarksActivity extends Activity{}{
	app in com_tunes_viewer
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET + WAKE_LOCK
}

one sig com_tunes_viewer_DownloadService extends Service{}{
	app in com_tunes_viewer
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET + WAKE_LOCK
}

one sig com_tunes_viewer_DownloadViewer extends Activity{}{
	app in com_tunes_viewer
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_tunes_viewer_MediaListActivity extends Activity{}{
	app in com_tunes_viewer
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_tunes_viewer_OpenFileActivity extends Activity{}{
	app in com_tunes_viewer
	intentFilter = IntentFilter1
	no compPermissions
	compUsesPermissions = INTERNET + WAKE_LOCK
}

one sig com_tunes_viewer_Player extends Activity{}{
	app in com_tunes_viewer
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_tunes_viewer_PrefsActivity extends Activity{}{
	app in com_tunes_viewer
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_tunes_viewer_Searcher extends Activity{}{
	app in com_tunes_viewer
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_tunes_viewer_TunesViewerActivity extends Activity{}{
	app in com_tunes_viewer
	intentFilter = IntentFilter2 + IntentFilter3 + IntentFilter3 + IntentFilter3 + IntentFilter3 + IntentFilter3 + IntentFilter3 + IntentFilter4
	no compPermissions
	compUsesPermissions = INTERNET + WAKE_LOCK
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = VIEW_A
	categories = BROWSABLE_C + DEFAULT_C
	data = NoMimeYesScheme + NoMimeNoScheme
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = VIEW_A
	categories = BROWSABLE_C + DEFAULT_C
	data = NoMimeYesScheme + NoMimeYesScheme
}

one sig IntentFilter3 extends IntentFilter{}{
	actions = VIEW_A
	categories = BROWSABLE_C + DEFAULT_C
	data = NoMimeYesScheme
}

one sig IntentFilter4 extends IntentFilter{}{
	actions = DOWNLOADED_A + MAIN_A
	categories = LAUNCHER_C
	no data
}


pred show(){
#Application=1
//#Component=9
#IntentFilter=4
no Intent
#Data=4
}
run show
