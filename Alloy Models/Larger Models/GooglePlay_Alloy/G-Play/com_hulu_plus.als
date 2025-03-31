open appDeclaration

one sig com_hulu_plus extends Application{}{
	usesPermissions = INTERNET + READ_PHONE_STATE + DISABLE_HDMI + ACCESS_NETWORK_STATE
	no appPermissions
	APIPermissions = INTERNET + READ_PHONE_STATE
}

one sig com_hulu_plus_HeadsetUnpluggedReceiver extends Receiver{}{
	app in com_hulu_plus
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_hulu_plus_MediaButtonIntentReceiver extends Receiver{}{
	app in com_hulu_plus
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig com_hulu_plus_PlayerActivity extends Activity{}{
	app in com_hulu_plus
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_hulu_plus_ReferrerReceiver extends Receiver{}{
	app in com_hulu_plus
	intentFilter = IntentFilter3
	no compPermissions
	no compUsesPermissions
}

one sig com_hulu_plus_RemoteNotificationService extends Service{}{
	app in com_hulu_plus
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_hulu_plus_Root extends Activity{}{
	app in com_hulu_plus
	intentFilter = IntentFilter4 + IntentFilter5 + IntentFilter6 + IntentFilter7
	no compPermissions
	compUsesPermissions = INTERNET
}

one sig com_hulu_plus_ThornBarNavScreen extends Activity{}{
	app in com_hulu_plus
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_hulu_plus_ThornScreen extends Activity{}{
	app in com_hulu_plus
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = AUDIO_BECOMING_NOISY_A
	no categories
	no data
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = MEDIA_BUTTON_A
	no categories
	no data
}

one sig IntentFilter3 extends IntentFilter{}{
	actions = INSTALL_REFERRER_A
	no categories
	no data
}

one sig IntentFilter4 extends IntentFilter{}{
	actions = SEARCH_A
	no categories
	no data
}

one sig IntentFilter5 extends IntentFilter{}{
	actions = LAUNCH_VIDEO_ID_A
	categories = DEFAULT_C
	no data
}

one sig IntentFilter6 extends IntentFilter{}{
	actions = LAUNCH_SHOW_INFO_A
	categories = DEFAULT_C
	no data
}

one sig IntentFilter7 extends IntentFilter{}{
	actions = VIEW_A
	categories = BROWSABLE_C + DEFAULT_C
	data = NoMimeYesScheme + NoMimeYesScheme + NoMimeYesScheme + NoMimeYesScheme + NoMimeYesScheme + NoMimeYesScheme + NoMimeYesScheme + NoMimeYesScheme
}


pred show(){
#Application=1
//#Component=8
#IntentFilter=7
no Intent
#Data=4
}
run show
