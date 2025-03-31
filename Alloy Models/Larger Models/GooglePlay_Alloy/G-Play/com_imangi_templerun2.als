open appDeclaration

one sig com_imangi_templerun2 extends Application{}{
	usesPermissions = WRITE_EXTERNAL_STORAGE + BILLING + INTERNET + ACCESS_NETWORK_STATE + ACCESS_WIFI_STATE + READ_PHONE_STATE + WAKE_LOCK
	no appPermissions
	no APIPermissions
}

one sig com_imangi_templerun2_AlarmManagerReceiver extends Receiver{}{
	app in com_imangi_templerun2
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_imangi_templerun2_CBDialogActivity extends Activity{}{
	app in com_imangi_templerun2
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_imangi_templerun2_CBImpressionActivity extends Activity{}{
	app in com_imangi_templerun2
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_imangi_templerun2_EtceteraProxyActivity extends Activity{}{
	app in com_imangi_templerun2
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_imangi_templerun2_FacebookProxyActivity extends Activity{}{
	app in com_imangi_templerun2
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_imangi_templerun2_FlurryFullscreenTakeoverActivity extends Activity{}{
	app in com_imangi_templerun2
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_imangi_templerun2_GoogleIABProxyActivity extends Activity{}{
	app in com_imangi_templerun2
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_imangi_templerun2_LoginActivity extends Activity{}{
	app in com_imangi_templerun2
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_imangi_templerun2_P31VideoPlayerActivity extends Activity{}{
	app in com_imangi_templerun2
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_imangi_templerun2_ResponseReceiver extends Receiver{}{
	app in com_imangi_templerun2
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_imangi_templerun2_UnityPlayerActivity extends Activity{}{
	app in com_imangi_templerun2
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_imangi_templerun2_UnityPlayerNativeActivity extends Activity{}{
	app in com_imangi_templerun2
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_imangi_templerun2_UnityPlayerProxyActivity extends Activity{}{
	app in com_imangi_templerun2
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_imangi_templerun2_WebViewActivity extends Activity{}{
	app in com_imangi_templerun2
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = NOTIFY_A
	no categories
	no data
}


pred show(){
#Application=1
//#Component=14
#IntentFilter=1
no Intent
#Data=4
}
run show
