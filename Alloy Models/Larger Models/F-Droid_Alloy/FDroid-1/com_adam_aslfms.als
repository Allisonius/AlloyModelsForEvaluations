open appDeclaration

one sig com_adam_aslfms extends Application{}{
	usesPermissions = INTERNET + ACCESS_NETWORK_STATE
	no appPermissions
	APIPermissions = ACCESS_NETWORK_STATE
}

one sig com_adam_aslfms_AndroidMusicJRTStudioBuildReceiver extends Receiver{}{
	app in com_adam_aslfms
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_adam_aslfms_AndroidMusicReceiver extends Receiver{}{
	app in com_adam_aslfms
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_adam_aslfms_HeroMusicReceiver extends Receiver{}{
	app in com_adam_aslfms
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_adam_aslfms_LgOptimus4xReceiver extends Receiver{}{
	app in com_adam_aslfms
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig com_adam_aslfms_MIUIMusicReceiver extends Receiver{}{
	app in com_adam_aslfms
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_adam_aslfms_MusicAppsScreen extends Activity{}{
	app in com_adam_aslfms
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_adam_aslfms_MyTouch4GMusicReceiver extends Receiver{}{
	app in com_adam_aslfms
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_adam_aslfms_OptionsScreen extends Activity{}{
	app in com_adam_aslfms
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_adam_aslfms_RdioMusicReceiver extends Receiver{}{
	app in com_adam_aslfms
	intentFilter = IntentFilter3
	no compPermissions
	no compUsesPermissions
}

one sig com_adam_aslfms_SEMCMusicReceiver extends Receiver{}{
	app in com_adam_aslfms
	intentFilter = IntentFilter4
	no compPermissions
	no compUsesPermissions
}

one sig com_adam_aslfms_SLSAPIReceiver extends Receiver{}{
	app in com_adam_aslfms
	intentFilter = IntentFilter5
	no compPermissions
	no compUsesPermissions
}

one sig com_adam_aslfms_SamsungMusicReceiver extends Receiver{}{
	app in com_adam_aslfms
	intentFilter = IntentFilter6
	no compPermissions
	no compUsesPermissions
}

one sig com_adam_aslfms_ScrobbleDroidMusicReceiver extends Receiver{}{
	app in com_adam_aslfms
	intentFilter = IntentFilter7
	no compPermissions
	no compUsesPermissions
}

one sig com_adam_aslfms_ScrobblingService extends Service{}{
	app in com_adam_aslfms
	intentFilter = IntentFilter8
	no compPermissions
	no compUsesPermissions
}

one sig com_adam_aslfms_SettingsActivity extends Activity{}{
	app in com_adam_aslfms
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_adam_aslfms_StatusActivity extends Activity{}{
	app in com_adam_aslfms
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_adam_aslfms_StatusInfoNetApp extends Activity{}{
	app in com_adam_aslfms
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_adam_aslfms_UserCredActivity extends Activity{}{
	app in com_adam_aslfms
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_adam_aslfms_UserCredsListScreen extends Activity{}{
	app in com_adam_aslfms
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_adam_aslfms_ViewScrobbleCacheActivity extends Activity{}{
	app in com_adam_aslfms
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_adam_aslfms_WinampMusicReceiver extends Receiver{}{
	app in com_adam_aslfms
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = metachanged_A + playbackcomplete_A + playstatechanged_A
	no categories
	no data
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = endofplayback_A + metachanged_A + playstatechanged_A
	no categories
	no data
}

one sig IntentFilter3 extends IntentFilter{}{
	actions = metachanged_A + playstatechanged_A
	no categories
	no data
}

one sig IntentFilter4 extends IntentFilter{}{
	actions = ACTION_PLAYBACK_PAUSE_A + ACTION_PLAYBACK_PLAY_A + TRACK_COMPLETED_A + metachanged_A + playbackcomplete_A + playstatechanged_A
	no categories
	no data
}

one sig IntentFilter5 extends IntentFilter{}{
	actions = playstatechanged_A
	no categories
	no data
}

one sig IntentFilter6 extends IntentFilter{}{
	actions = metachanged_A + metachanged_A + metachanged_A + metachanged_A + metachanged_A + playbackcomplete_A + playbackcomplete_A + playbackcomplete_A + playbackcomplete_A + playbackcomplete_A + playstatechanged_A + playstatechanged_A + playstatechanged_A + playstatechanged_A + playstatechanged_A
	no categories
	no data
}

one sig IntentFilter7 extends IntentFilter{}{
	actions = MUSIC_STATUS_A
	no categories
	no data
}

one sig IntentFilter8 extends IntentFilter{}{
	actions = authenticate_A + clearcreds_A + justscrobble_A + playstatechanged_A
	no categories
	no data
}


pred show(){
#Application=1
//#Component=21
//#IntentFilter=8
no Intent
#Data=4
}
run show
