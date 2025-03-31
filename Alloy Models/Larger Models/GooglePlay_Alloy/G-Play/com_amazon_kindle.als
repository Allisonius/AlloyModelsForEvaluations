open appDeclaration

one sig com_amazon_kindle extends Application{}{
	usesPermissions = STORE_ACCESS + CONTENT_PROVIDER_ACCESS + ACCESS_NETWORK_STATE + ACCESS_WIFI_STATE + INTERNET + WRITE_EXTERNAL_STORAGE + WAKE_LOCK + AUTHENTICATE_ACCOUNTS + GET_ACCOUNTS + MANAGE_ACCOUNTS + USE_CREDENTIALS + AMAZON_ACCOUNT_PROPERTY + changed
	no appPermissions
	APIPermissions = INTERNET
}

one sig com_amazon_kindle_AboutActivity extends Activity{}{
	app in com_amazon_kindle
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_amazon_kindle_AlertActivity extends Activity{}{
	app in com_amazon_kindle
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_amazon_kindle_BookReaderSearchActivity extends Activity{}{
	app in com_amazon_kindle
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_amazon_kindle_BookTOCActivity extends Activity{}{
	app in com_amazon_kindle
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_amazon_kindle_CampaignWebView extends Receiver{}{
	app in com_amazon_kindle
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig com_amazon_kindle_CoverActivity extends Activity{}{
	app in com_amazon_kindle
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_amazon_kindle_CoverDownloadService extends Service{}{
	app in com_amazon_kindle
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_amazon_kindle_DMSSubAuthenticatorService extends Service{}{
	app in com_amazon_kindle
	intentFilter = IntentFilter3
	no compPermissions
	no compUsesPermissions
}

one sig com_amazon_kindle_DebugActivity extends Activity{}{
	app in com_amazon_kindle
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_amazon_kindle_DeleteActivity extends Activity{}{
	app in com_amazon_kindle
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_amazon_kindle_DownloadErrorActivity extends Activity{}{
	app in com_amazon_kindle
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_amazon_kindle_EditNoteActivity extends Activity{}{
	app in com_amazon_kindle
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_amazon_kindle_FatalErrorActivity extends Activity{}{
	app in com_amazon_kindle
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_amazon_kindle_FeedbackActivity extends Activity{}{
	app in com_amazon_kindle
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_amazon_kindle_FilteredArticleListActivity extends Activity{}{
	app in com_amazon_kindle
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_amazon_kindle_FontDownloadService extends Service{}{
	app in com_amazon_kindle
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_amazon_kindle_HomeActivity extends Activity{}{
	app in com_amazon_kindle
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_amazon_kindle_ImageZoomActivity extends Activity{}{
	app in com_amazon_kindle
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_amazon_kindle_InfoActivity extends Activity{}{
	app in com_amazon_kindle
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_amazon_kindle_LibraryFragmentActivity extends Activity{}{
	app in com_amazon_kindle
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_amazon_kindle_MarketReferralTracker extends Receiver{}{
	app in com_amazon_kindle
	intentFilter = IntentFilter4
	no compPermissions
	no compUsesPermissions
}

one sig com_amazon_kindle_MopReaderActivity extends Activity{}{
	app in com_amazon_kindle
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_amazon_kindle_NotebookActivity extends Activity{}{
	app in com_amazon_kindle
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_amazon_kindle_NotesActivity extends Activity{}{
	app in com_amazon_kindle
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_amazon_kindle_PdfBookOpenHelperActivity extends Activity{}{
	app in com_amazon_kindle
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_amazon_kindle_PeriodicalContentListActivity extends Activity{}{
	app in com_amazon_kindle
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_amazon_kindle_PeriodicalReaderActivity extends Activity{}{
	app in com_amazon_kindle
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_amazon_kindle_PeriodicalReaderSearchActivity extends Activity{}{
	app in com_amazon_kindle
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_amazon_kindle_SearchActivity extends Activity{}{
	app in com_amazon_kindle
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_amazon_kindle_SectionListActivity extends Activity{}{
	app in com_amazon_kindle
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_amazon_kindle_SendToKindleActivity extends Activity{}{
	app in com_amazon_kindle
	intentFilter = IntentFilter5
	no compPermissions
	no compUsesPermissions
}

one sig com_amazon_kindle_SendToKindleService extends Service{}{
	app in com_amazon_kindle
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_amazon_kindle_SettingsActivity extends Activity{}{
	app in com_amazon_kindle
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_amazon_kindle_SimplifiedStandAloneBookReaderActivity extends Activity{}{
	app in com_amazon_kindle
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_amazon_kindle_StackWidgetProvider extends Receiver{}{
	app in com_amazon_kindle
	intentFilter = IntentFilter6
	no compPermissions
	no compUsesPermissions
}

one sig com_amazon_kindle_StackWidgetService extends Service{}{
	app in com_amazon_kindle
	no intentFilter
	compPermissions = BIND_REMOTEVIEWS
	no compUsesPermissions
}

one sig com_amazon_kindle_StandAloneBookReaderActivity extends Activity{}{
	app in com_amazon_kindle
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_amazon_kindle_StandAloneMopReaderActivity extends Activity{}{
	app in com_amazon_kindle
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_amazon_kindle_StandAlonePdfReaderActivity extends Activity{}{
	app in com_amazon_kindle
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_amazon_kindle_StandaloneAccountAddTracker extends Receiver{}{
	app in com_amazon_kindle
	intentFilter = IntentFilter7
	no compPermissions
	no compUsesPermissions
}

one sig com_amazon_kindle_StandaloneBackendInteractionService extends Service{}{
	app in com_amazon_kindle
	intentFilter = IntentFilter8
	compPermissions = CONTENT_PROVIDER_ACCESS
	no compUsesPermissions
}

one sig com_amazon_kindle_StandaloneDefinitionContainerModule extends Receiver{}{
	app in com_amazon_kindle
	intentFilter = IntentFilter9
	no compPermissions
	no compUsesPermissions
}

one sig com_amazon_kindle_StandaloneMangaPagerActivity extends Activity{}{
	app in com_amazon_kindle
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_amazon_kindle_StoreActivity extends Activity{}{
	app in com_amazon_kindle
	no intentFilter
	compPermissions = STORE_ACCESS
	no compUsesPermissions
}

one sig com_amazon_kindle_ThumbnailService extends Service{}{
	app in com_amazon_kindle
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_amazon_kindle_TransientActivity extends Activity{}{
	app in com_amazon_kindle
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_amazon_kindle_TwoPanelsArticleListActivity extends Activity{}{
	app in com_amazon_kindle
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_amazon_kindle_UnFilteredArticleListActivity extends Activity{}{
	app in com_amazon_kindle
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_amazon_kindle_UpgradePage extends Activity{}{
	app in com_amazon_kindle
	intentFilter = IntentFilter10 + IntentFilter11 + IntentFilter11 + IntentFilter10
	no compPermissions
	no compUsesPermissions
}

one sig com_amazon_kindle_WebViewActivity extends Activity{}{
	app in com_amazon_kindle
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_amazon_kindle_WelcomeActivity extends Activity{}{
	app in com_amazon_kindle
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = SEARCH_A
	categories = DEFAULT_C
	no data
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = CONNECTIVITY_CHANGE_A
	no categories
	no data
}

one sig IntentFilter3 extends IntentFilter{}{
	actions = AccountSubAuthenticator_A
	no categories
	no data
}

one sig IntentFilter4 extends IntentFilter{}{
	actions = INSTALL_REFERRER_A
	no categories
	no data
}

one sig IntentFilter5 extends IntentFilter{}{
	actions = SEND_A
	categories = DEFAULT_C
	data = YesMimeNoScheme + YesMimeNoScheme + YesMimeNoScheme + YesMimeNoScheme + YesMimeNoScheme + YesMimeNoScheme + YesMimeNoScheme + YesMimeNoScheme + YesMimeNoScheme + YesMimeNoScheme
}

one sig IntentFilter6 extends IntentFilter{}{
	actions = APPWIDGET_UPDATE_A
	no categories
	no data
}

one sig IntentFilter7 extends IntentFilter{}{
	actions = added_A + added_A
	no categories
	no data
}

one sig IntentFilter8 extends IntentFilter{}{
	actions = REGISTER_A
	no categories
	no data
}

one sig IntentFilter9 extends IntentFilter{}{
	actions = LOCALE_CHANGED_A
	no categories
	no data
}

one sig IntentFilter10 extends IntentFilter{}{
	actions = VIEW_A
	categories = BROWSABLE_C + DEFAULT_C
	data = NoMimeYesScheme
}

one sig IntentFilter11 extends IntentFilter{}{
	actions = VIEW_A
	categories = BROWSABLE_C + DEFAULT_C
	data = YesMimeYesScheme
}


pred show(){
#Application=1
//#Component=51
//#IntentFilter=11
no Intent
#Data=4
}
run show
