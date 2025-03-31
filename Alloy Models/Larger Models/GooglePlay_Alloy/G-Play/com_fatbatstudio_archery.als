open appDeclaration

one sig com_fatbatstudio_archery extends Application{}{
	usesPermissions = INTERNET + WRITE_EXTERNAL_STORAGE + ACCESS_NETWORK_STATE + ACCESS_WIFI_STATE + VIBRATE
	no appPermissions
	no APIPermissions
}

one sig com_fatbatstudio_archery_AdActivity extends Activity{}{
	app in com_fatbatstudio_archery
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_fatbatstudio_archery_AdBuddizActivity extends Activity{}{
	app in com_fatbatstudio_archery
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_fatbatstudio_archery_AppBrainActivity extends Activity{}{
	app in com_fatbatstudio_archery
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_fatbatstudio_archery_AppBrainService extends Service{}{
	app in com_fatbatstudio_archery
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_fatbatstudio_archery_ArcheryActivity extends Activity{}{
	app in com_fatbatstudio_archery
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_fatbatstudio_archery_GiftizWebViewActivity extends Activity{}{
	app in com_fatbatstudio_archery
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_fatbatstudio_archery_ReferrerReceiver extends Receiver{}{
	app in com_fatbatstudio_archery
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = INSTALL_REFERRER_A
	no categories
	no data
}


pred show(){
#Application=1
#Component=7
#IntentFilter=1
no Intent
#Data=4
}
run show
