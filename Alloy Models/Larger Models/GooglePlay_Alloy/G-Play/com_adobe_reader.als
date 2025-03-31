open appDeclaration

one sig com_adobe_reader extends Application{}{
	usesPermissions = READ + INTERNET + WRITE_EXTERNAL_STORAGE + ACCESS_NETWORK_STATE
	no appPermissions
	APIPermissions = INTERNET + ACCESS_NETWORK_STATE
}

one sig com_adobe_reader_ARAboutActivity extends Activity{}{
	app in com_adobe_reader
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_adobe_reader_ARCloudPrintActivity extends Activity{}{
	app in com_adobe_reader
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_adobe_reader_ARCreatePDFActivity extends Activity{}{
	app in com_adobe_reader
	no intentFilter
	no compPermissions
	compUsesPermissions = ACCESS_NETWORK_STATE
}

one sig com_adobe_reader_ARCreatePDFChooserActivity extends Activity{}{
	app in com_adobe_reader
	intentFilter = IntentFilter1 + IntentFilter2 + IntentFilter3
	no compPermissions
	no compUsesPermissions
}

one sig com_adobe_reader_AREchoSignUploadService extends Service{}{
	app in com_adobe_reader
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_adobe_reader_ARExportPDFOptionsActivity extends Activity{}{
	app in com_adobe_reader
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_adobe_reader_ARFileTransferActivity extends Activity{}{
	app in com_adobe_reader
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_adobe_reader_ARFileTransferService extends Service{}{
	app in com_adobe_reader
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET
}

one sig com_adobe_reader_ARSendForSignature extends Activity{}{
	app in com_adobe_reader
	intentFilter = IntentFilter4
	no compPermissions
	no compUsesPermissions
}

one sig com_adobe_reader_ARServicesLoginActivity extends Activity{}{
	app in com_adobe_reader
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_adobe_reader_ARSettingsActivity extends Activity{}{
	app in com_adobe_reader
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_adobe_reader_ARSplitPaneActivity extends Activity{}{
	app in com_adobe_reader
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET
}

one sig com_adobe_reader_ARViewerActivity extends Activity{}{
	app in com_adobe_reader
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_adobe_reader_AdobeReader extends Activity{}{
	app in com_adobe_reader
	intentFilter = IntentFilter5 + IntentFilter6 + IntentFilter7
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = SEND_A + VIEW_A
	categories = DEFAULT_C
	data = YesMimeNoScheme + YesMimeNoScheme + YesMimeNoScheme + YesMimeNoScheme + YesMimeNoScheme + YesMimeNoScheme + YesMimeNoScheme + YesMimeNoScheme + YesMimeNoScheme + YesMimeNoScheme + YesMimeNoScheme + YesMimeNoScheme + YesMimeNoScheme + YesMimeNoScheme + YesMimeNoScheme + YesMimeNoScheme + YesMimeNoScheme + YesMimeNoScheme + YesMimeNoScheme + YesMimeNoScheme + YesMimeNoScheme + YesMimeNoScheme + YesMimeNoScheme + YesMimeNoScheme + YesMimeNoScheme + YesMimeNoScheme + YesMimeNoScheme
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = SEND_A + VIEW_A
	categories = DEFAULT_C
	data = YesMimeNoScheme + YesMimeNoScheme + YesMimeNoScheme + YesMimeNoScheme + YesMimeNoScheme + YesMimeNoScheme
}

one sig IntentFilter3 extends IntentFilter{}{
	actions = SEND_A + VIEW_A
	categories = DEFAULT_C
	data = NoMimeYesScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme + NoMimeNoScheme
}

one sig IntentFilter4 extends IntentFilter{}{
	actions = SEND_A
	categories = DEFAULT_C
	data = YesMimeNoScheme
}

one sig IntentFilter5 extends IntentFilter{}{
	actions = VIEW_A
	categories = DEFAULT_C
	data = NoMimeYesScheme
}

one sig IntentFilter6 extends IntentFilter{}{
	actions = VIEW_A
	categories = DEFAULT_C
	data = YesMimeNoScheme
}

one sig IntentFilter7 extends IntentFilter{}{
	actions = VIEW_A
	categories = BROWSABLE_C + DEFAULT_C
	data = NoMimeYesScheme
}


pred show(){
#Application=1
//#Component=14
#IntentFilter=7
no Intent
#Data=4
}
run show
