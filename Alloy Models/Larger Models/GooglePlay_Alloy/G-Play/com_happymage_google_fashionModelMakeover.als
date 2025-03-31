open appDeclaration

one sig com_happymage_google_fashionModelMakeover extends Application{}{
	usesPermissions = MOUNT_UNMOUNT_FILESYSTEMS + WRITE_EXTERNAL_STORAGE + INTERNET + ACCESS_NETWORK_STATE + ACCESS_COARSE_LOCATION + READ_PHONE_STATE + BILLING + ACCESS_WIFI_STATE
	no appPermissions
	no APIPermissions
}

one sig com_happymage_google_fashionModelMakeover_ActionHandler extends Activity{}{
	app in com_happymage_google_fashionModelMakeover
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_happymage_google_fashionModelMakeover_AdActivity extends Activity{}{
	app in com_happymage_google_fashionModelMakeover
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_happymage_google_fashionModelMakeover_AppDriverPromotionActivity extends Activity{}{
	app in com_happymage_google_fashionModelMakeover
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_happymage_google_fashionModelMakeover_BillingReceiver extends Receiver{}{
	app in com_happymage_google_fashionModelMakeover
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_happymage_google_fashionModelMakeover_BillingService extends Service{}{
	app in com_happymage_google_fashionModelMakeover
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_happymage_google_fashionModelMakeover_Browser extends Activity{}{
	app in com_happymage_google_fashionModelMakeover
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_happymage_google_fashionModelMakeover_CBDialogActivity extends Activity{}{
	app in com_happymage_google_fashionModelMakeover
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_happymage_google_fashionModelMakeover_FlurryFullscreenTakeoverActivity extends Activity{}{
	app in com_happymage_google_fashionModelMakeover
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_happymage_google_fashionModelMakeover_MMActivity extends Activity{}{
	app in com_happymage_google_fashionModelMakeover
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_happymage_google_fashionModelMakeover_MoPubActivity extends Activity{}{
	app in com_happymage_google_fashionModelMakeover
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_happymage_google_fashionModelMakeover_MraidActivity extends Activity{}{
	app in com_happymage_google_fashionModelMakeover
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_happymage_google_fashionModelMakeover_MraidBrowser extends Activity{}{
	app in com_happymage_google_fashionModelMakeover
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_happymage_google_fashionModelMakeover_MunerisActivity extends Activity{}{
	app in com_happymage_google_fashionModelMakeover
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_happymage_google_fashionModelMakeover_OpenUDID_service extends Service{}{
	app in com_happymage_google_fashionModelMakeover
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig com_happymage_google_fashionModelMakeover_Receiver extends Receiver{}{
	app in com_happymage_google_fashionModelMakeover
	intentFilter = IntentFilter3
	no compPermissions
	no compUsesPermissions
}

one sig com_happymage_google_fashionModelMakeover_TJAdUnitView extends Activity{}{
	app in com_happymage_google_fashionModelMakeover
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_happymage_google_fashionModelMakeover_TJCOffersWebView extends Activity{}{
	app in com_happymage_google_fashionModelMakeover
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_happymage_google_fashionModelMakeover_TapjoyDailyRewardAdWebView extends Activity{}{
	app in com_happymage_google_fashionModelMakeover
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_happymage_google_fashionModelMakeover_TapjoyFullScreenAdWebView extends Activity{}{
	app in com_happymage_google_fashionModelMakeover
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_happymage_google_fashionModelMakeover_TapjoyVideoView extends Activity{}{
	app in com_happymage_google_fashionModelMakeover
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_happymage_google_fashionModelMakeover_TopModelActivity extends Activity{}{
	app in com_happymage_google_fashionModelMakeover
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_happymage_google_fashionModelMakeover_VideoPlayer extends Activity{}{
	app in com_happymage_google_fashionModelMakeover
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = IN_APP_NOTIFY_A + PURCHASE_STATE_CHANGED_A + RESPONSE_CODE_A
	no categories
	no data
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = GETUDID_A
	no categories
	no data
}

one sig IntentFilter3 extends IntentFilter{}{
	actions = INSTALL_REFERRER_A
	no categories
	no data
}


pred show(){
#Application=1
//#Component=22
#IntentFilter=3
no Intent
#Data=4
}
run show
