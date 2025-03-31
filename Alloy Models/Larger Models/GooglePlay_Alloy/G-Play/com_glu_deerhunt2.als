open appDeclaration

one sig com_glu_deerhunt2 extends Application{}{
	usesPermissions = INTERNET + READ_PHONE_STATE + ACCESS_NETWORK_STATE + WRITE_EXTERNAL_STORAGE + ACCESS_WIFI_STATE + WRITE_EXTERNAL_STORAGE + INTERNET + ACCESS_NETWORK_STATE + INTERNET + WRITE_EXTERNAL_STORAGE + ACCESS_NETWORK_STATE + ACCESS_WIFI_STATE + INTERNET + READ_PHONE_STATE + WRITE_EXTERNAL_STORAGE + ACCESS_NETWORK_STATE + INTERNET + INTERNET + ACCESS_COARSE_LOCATION + ACCESS_NETWORK_STATE + ACCESS_WIFI_STATE + INTERNET + ACCESS_COARSE_LOCATION + ACCESS_NETWORK_STATE + ACCESS_WIFI_STATE + READ_PHONE_STATE + READ_EXTERNAL_STORAGE + BILLING + INTERNET + ACCESS_NETWORK_STATE + READ_PHONE_STATE + WRITE_EXTERNAL_STORAGE + BACKUP + WRITE_EXTERNAL_STORAGE + INTERNET + RECEIVE_BOOT_COMPLETED + VIBRATE + INTERNET + INTERNET + READ_PHONE_STATE + INTERNET + ACCESS_NETWORK_STATE + ACCESS_WIFI_STATE + READ_PHONE_STATE + INTERNET + INTERNET + ACCESS_NETWORK_STATE + CHECK_LICENSE + INTERNET + WAKE_LOCK + ACCESS_NETWORK_STATE + ACCESS_WIFI_STATE + WRITE_EXTERNAL_STORAGE + INTERNET + GET_ACCOUNTS + WRITE_EXTERNAL_STORAGE + READ_PHONE_STATE + ACCESS_NETWORK_STATE
	no appPermissions
	no APIPermissions
}

one sig com_glu_deerhunt2_AJTInternet extends Activity{}{
	app in com_glu_deerhunt2
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_glu_deerhunt2_ActionHandler extends Activity{}{
	app in com_glu_deerhunt2
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_glu_deerhunt2_AdColonyBrowser extends Activity{}{
	app in com_glu_deerhunt2
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_glu_deerhunt2_AdColonyFullscreen extends Activity{}{
	app in com_glu_deerhunt2
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_glu_deerhunt2_AdColonyOverlay extends Activity{}{
	app in com_glu_deerhunt2
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_glu_deerhunt2_AlarmReceiver extends Receiver{}{
	app in com_glu_deerhunt2
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_glu_deerhunt2_BillingSMSReceiver extends Receiver{}{
	app in com_glu_deerhunt2
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_glu_deerhunt2_Browser extends Activity{}{
	app in com_glu_deerhunt2
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_glu_deerhunt2_DownloaderActivity extends Activity{}{
	app in com_glu_deerhunt2
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_glu_deerhunt2_FlurryFullscreenTakeoverActivity extends Activity{}{
	app in com_glu_deerhunt2
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_glu_deerhunt2_FortumoActivity extends Activity{}{
	app in com_glu_deerhunt2
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_glu_deerhunt2_FortumoService extends Service{}{
	app in com_glu_deerhunt2
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_glu_deerhunt2_GDownloaderService extends Service{}{
	app in com_glu_deerhunt2
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_glu_deerhunt2_GiftingActivity extends Activity{}{
	app in com_glu_deerhunt2
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_glu_deerhunt2_GluInstallReferrerBroadcastReceiver extends Receiver{}{
	app in com_glu_deerhunt2
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig com_glu_deerhunt2_IapWeb extends Activity{}{
	app in com_glu_deerhunt2
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_glu_deerhunt2_LoginActivity extends Activity{}{
	app in com_glu_deerhunt2
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_glu_deerhunt2_MraidBrowser extends Activity{}{
	app in com_glu_deerhunt2
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_glu_deerhunt2_NotificationReceiver extends Receiver{}{
	app in com_glu_deerhunt2
	intentFilter = IntentFilter3
	no compPermissions
	no compUsesPermissions
}

one sig com_glu_deerhunt2_OfferWallActivity extends Activity{}{
	app in com_glu_deerhunt2
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_glu_deerhunt2_PHContentView extends Activity{}{
	app in com_glu_deerhunt2
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_glu_deerhunt2_PackageReceiver extends Receiver{}{
	app in com_glu_deerhunt2
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_glu_deerhunt2_PaymentStatusReceiver extends Receiver{}{
	app in com_glu_deerhunt2
	intentFilter = IntentFilter4
	compPermissions = PAYMENT_BROADCAST_PERMISSION
	no compUsesPermissions
}

one sig com_glu_deerhunt2_ResponseReceiver extends Receiver{}{
	app in com_glu_deerhunt2
	intentFilter = IntentFilter5
	no compPermissions
	no compUsesPermissions
}

one sig com_glu_deerhunt2_SessionMActivity extends Activity{}{
	app in com_glu_deerhunt2
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_glu_deerhunt2_StatusUpdateService extends Service{}{
	app in com_glu_deerhunt2
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_glu_deerhunt2_TJAdUnitView extends Activity{}{
	app in com_glu_deerhunt2
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_glu_deerhunt2_TJCOffersWebView extends Activity{}{
	app in com_glu_deerhunt2
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_glu_deerhunt2_TapjoyDailyRewardAdWebView extends Activity{}{
	app in com_glu_deerhunt2
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_glu_deerhunt2_TapjoyFullScreenAdWebView extends Activity{}{
	app in com_glu_deerhunt2
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_glu_deerhunt2_TapjoyVideoView extends Activity{}{
	app in com_glu_deerhunt2
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_glu_deerhunt2_UnityLauncherActivity extends Activity{}{
	app in com_glu_deerhunt2
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_glu_deerhunt2_UnityPlayerActivity extends Activity{}{
	app in com_glu_deerhunt2
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_glu_deerhunt2_UnpackerService extends Service{}{
	app in com_glu_deerhunt2
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_glu_deerhunt2_VideoActionHandler extends Activity{}{
	app in com_glu_deerhunt2
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_glu_deerhunt2_VideoAdsActivity extends Activity{}{
	app in com_glu_deerhunt2
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_glu_deerhunt2_VideoPlayer extends Activity{}{
	app in com_glu_deerhunt2
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = SMS_RECEIVED_A
	no categories
	no data
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = INSTALL_REFERRER_A
	no categories
	no data
}

one sig IntentFilter3 extends IntentFilter{}{
	actions = BOOT_COMPLETED_A
	no categories
	no data
}

one sig IntentFilter4 extends IntentFilter{}{
	actions = PAYMENT_STATUS_CHANGED_A
	no categories
	no data
}

one sig IntentFilter5 extends IntentFilter{}{
	actions = NOTIFY_A
	no categories
	no data
}


pred show(){
#Application=1
//#Component=37
#IntentFilter=5
no Intent
#Data=4
}
run show
