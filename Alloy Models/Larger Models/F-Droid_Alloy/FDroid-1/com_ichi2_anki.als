open appDeclaration

one sig com_ichi2_anki extends Application{}{
	usesPermissions = WRITE_EXTERNAL_STORAGE + VIBRATE + INTERNET + ACCESS_NETWORK_STATE
	no appPermissions
	APIPermissions = VIBRATE + INTERNET
}

one sig com_ichi2_anki_AnkiDroidWidgetSmall extends Receiver{}{
	app in com_ichi2_anki
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_ichi2_anki_CardBrowser extends Activity{}{
	app in com_ichi2_anki
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_ichi2_anki_CardEditor extends Activity{}{
	app in com_ichi2_anki
	intentFilter = IntentFilter2 + IntentFilter3
	no compPermissions
	compUsesPermissions = INTERNET
}

one sig com_ichi2_anki_ChartBuilder extends Activity{}{
	app in com_ichi2_anki
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_ichi2_anki_CramDeckOptions extends Activity{}{
	app in com_ichi2_anki
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_ichi2_anki_DeckOptions extends Activity{}{
	app in com_ichi2_anki
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_ichi2_anki_DeckPicker extends Activity{}{
	app in com_ichi2_anki
	intentFilter = IntentFilter4 + IntentFilter5
	no compPermissions
	compUsesPermissions = INTERNET
}

one sig com_ichi2_anki_DownloadManagerService extends Service{}{
	app in com_ichi2_anki
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET
}

one sig com_ichi2_anki_Feedback extends Activity{}{
	app in com_ichi2_anki
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_ichi2_anki_Info extends Activity{}{
	app in com_ichi2_anki
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_ichi2_anki_MyAccount extends Activity{}{
	app in com_ichi2_anki
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_ichi2_anki_Notification extends Activity{}{
	app in com_ichi2_anki
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_ichi2_anki_NotificationService extends Service{}{
	app in com_ichi2_anki
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_ichi2_anki_PersonalDeckPicker extends Activity{}{
	app in com_ichi2_anki
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_ichi2_anki_Preferences extends Activity{}{
	app in com_ichi2_anki
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_ichi2_anki_Reviewer extends Activity{}{
	app in com_ichi2_anki
	no intentFilter
	no compPermissions
	compUsesPermissions = INTERNET
}

one sig com_ichi2_anki_SdCardReceiver extends Receiver{}{
	app in com_ichi2_anki
	intentFilter = IntentFilter6 + IntentFilter7
	no compPermissions
	no compUsesPermissions
}

one sig com_ichi2_anki_SharedDeckPicker extends Activity{}{
	app in com_ichi2_anki
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_ichi2_anki_StudyOptionsActivity extends Activity{}{
	app in com_ichi2_anki
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_ichi2_anki_WidgetContentService extends Service{}{
	app in com_ichi2_anki
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_ichi2_anki_WidgetDialog extends Activity{}{
	app in com_ichi2_anki
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = APPWIDGET_UPDATE_A
	no categories
	no data
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = CREATE_FLASHCARD_A
	categories = DEFAULT_C
	no data
}

one sig IntentFilter3 extends IntentFilter{}{
	actions = SEND_A
	categories = DEFAULT_C
	data = YesMimeNoScheme
}

one sig IntentFilter4 extends IntentFilter{}{
	actions = VIEW_A
	categories = DECK_C + DEFAULT_C
	data = YesMimeNoScheme
}

one sig IntentFilter5 extends IntentFilter{}{
	actions = VIEW_A
	categories = BROWSABLE_C + DEFAULT_C
	data = NoMimeYesScheme + NoMimeYesScheme + NoMimeYesScheme + NoMimeYesScheme
}

one sig IntentFilter6 extends IntentFilter{}{
	actions = MEDIA_MOUNTED_A
	no categories
	data = NoMimeYesScheme
}

one sig IntentFilter7 extends IntentFilter{}{
	actions = MEDIA_EJECT_A
	no categories
	data = NoMimeYesScheme
}


pred show(){
#Application=1
//#Component=21
#IntentFilter=7
no Intent
#Data=4
}
run show
