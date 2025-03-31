open appDeclaration

one sig com_clearchannel_iheartradio_controller extends Application{}{
	usesPermissions = INTERNET + READ_PHONE_STATE + ACCESS_WIFI_STATE + ACCESS_NETWORK_STATE + WRITE_EXTERNAL_STORAGE + WAKE_LOCK + BLUETOOTH + ACCESS_FINE_LOCATION + VIBRATE + RECEIVE_BOOT_COMPLETED + GET_ACCOUNTS + WAKE_LOCK + RECEIVE + C2D_MESSAGE
	no appPermissions
	no APIPermissions
}

one sig com_clearchannel_iheartradio_controller_AdActivity extends Activity{}{
	app in com_clearchannel_iheartradio_controller
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_clearchannel_iheartradio_controller_AlarmReceiver extends Receiver{}{
	app in com_clearchannel_iheartradio_controller
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_clearchannel_iheartradio_controller_AnalyticsReceiver extends Receiver{}{
	app in com_clearchannel_iheartradio_controller
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig com_clearchannel_iheartradio_controller_CacheService extends Service{}{
	app in com_clearchannel_iheartradio_controller
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_clearchannel_iheartradio_controller_CoreReceiver extends Receiver{}{
	app in com_clearchannel_iheartradio_controller
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_clearchannel_iheartradio_controller_EventService extends Service{}{
	app in com_clearchannel_iheartradio_controller
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_clearchannel_iheartradio_controller_GCMPushReceiver extends Receiver{}{
	app in com_clearchannel_iheartradio_controller
	intentFilter = IntentFilter3 + IntentFilter4
	compPermissions = SEND
	no compUsesPermissions
}

one sig com_clearchannel_iheartradio_controller_IHRWidget extends Receiver{}{
	app in com_clearchannel_iheartradio_controller
	intentFilter = IntentFilter5
	no compPermissions
	no compUsesPermissions
}

one sig com_clearchannel_iheartradio_controller_IntentReceiver extends Receiver{}{
	app in com_clearchannel_iheartradio_controller
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_clearchannel_iheartradio_controller_LoginActivity extends Activity{}{
	app in com_clearchannel_iheartradio_controller
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_clearchannel_iheartradio_controller_MusicIntentReceiver extends Receiver{}{
	app in com_clearchannel_iheartradio_controller
	intentFilter = IntentFilter6
	no compPermissions
	no compUsesPermissions
}

one sig com_clearchannel_iheartradio_controller_NotificationActionService extends Service{}{
	app in com_clearchannel_iheartradio_controller
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_clearchannel_iheartradio_controller_PlayerService extends Service{}{
	app in com_clearchannel_iheartradio_controller
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_clearchannel_iheartradio_controller_PushService extends Service{}{
	app in com_clearchannel_iheartradio_controller
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_clearchannel_iheartradio_controller_PushWorkerService extends Service{}{
	app in com_clearchannel_iheartradio_controller
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_clearchannel_iheartradio_controller_RateReinstallListener extends Receiver{}{
	app in com_clearchannel_iheartradio_controller
	intentFilter = IntentFilter7
	no compPermissions
	no compUsesPermissions
}

one sig com_clearchannel_iheartradio_controller_SyncService extends Service{}{
	app in com_clearchannel_iheartradio_controller
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_clearchannel_iheartradio_controller_ThumbPlayRemoteControlReceiver extends Receiver{}{
	app in com_clearchannel_iheartradio_controller
	intentFilter = IntentFilter8
	no compPermissions
	no compUsesPermissions
}

one sig com_clearchannel_iheartradio_controller_iheartradio extends Activity{}{
	app in com_clearchannel_iheartradio_controller
	intentFilter = IntentFilter9 + IntentFilter10 + IntentFilter11 + IntentFilter11
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = BOOT_COMPLETED_A + TIMEZONE_CHANGED_A + ihr_alarm_A
	no categories
	no data
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = INSTALL_REFERRER_A
	no categories
	no data
}

one sig IntentFilter3 extends IntentFilter{}{
	actions = RECEIVE_A + REGISTRATION_A
	categories = controller_C
	no data
}

one sig IntentFilter4 extends IntentFilter{}{
	actions = PACKAGE_REPLACED_A
	no categories
	data = NoMimeYesScheme
}

one sig IntentFilter5 extends IntentFilter{}{
	actions = APPWIDGET_UPDATE_A + alarm_changed_A + player_manager_on_meta_data_changed_action_A + player_manager_on_radio_changed_action_A + player_manager_on_state_changed_action_A + player_manager_on_track_changed_action_A + player_service_created_action_A + player_service_stopped_action_A + sleep_timer_changed_A + view_on_orientation_changed_A
	no categories
	no data
}

one sig IntentFilter6 extends IntentFilter{}{
	actions = AUDIO_BECOMING_NOISY_A
	no categories
	no data
}

one sig IntentFilter7 extends IntentFilter{}{
	actions = PACKAGE_ADDED_A + PACKAGE_REPLACED_A
	no categories
	data = NoMimeYesScheme
}

one sig IntentFilter8 extends IntentFilter{}{
	actions = MEDIA_BUTTON_A
	no categories
	no data
}

one sig IntentFilter9 extends IntentFilter{}{
	actions = SEARCH_A
	categories = DEFAULT_C
	no data
}

one sig IntentFilter10 extends IntentFilter{}{
	actions = MEDIA_PLAY_FROM_SEARCH_A
	categories = DEFAULT_C
	no data
}

one sig IntentFilter11 extends IntentFilter{}{
	actions = VIEW_A
	categories = BROWSABLE_C + DEFAULT_C
	data = NoMimeYesScheme
}


pred show(){
#Application=1
//#Component=19
//#IntentFilter=11
no Intent
#Data=4
}
run show
