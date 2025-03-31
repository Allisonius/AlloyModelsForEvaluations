open appDeclaration

one sig com_cleanmaster_mguard extends Application{}{
	usesPermissions = GET_TASKS + GET_PACKAGE_SIZE + CLEAR_APP_CACHE + READ_HISTORY_BOOKMARKS + WRITE_HISTORY_BOOKMARKS + READ_LOGS + WRITE_EXTERNAL_STORAGE + READ_PHONE_STATE + ACCESS_WIFI_STATE + ACCESS_NETWORK_STATE + SYSTEM_ALERT_WINDOW + INSTALL_SHORTCUT + UNINSTALL_SHORTCUT + READ_SETTINGS + WRITE_SETTINGS + RESTART_PACKAGES + INTERNET + MOUNT_UNMOUNT_FILESYSTEMS + BATTERY_STATS + WAKE_LOCK + BROADCAST_STICKY
	no appPermissions
	no APIPermissions
}

one sig com_cleanmaster_mguard_AboutActivity extends Activity{}{
	app in com_cleanmaster_mguard
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_AdActivity extends Activity{}{
	app in com_cleanmaster_mguard
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_AddDesktopShortcutActivity extends Activity{}{
	app in com_cleanmaster_mguard
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_AppAPKActivity extends Activity{}{
	app in com_cleanmaster_mguard
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_AppManagerActivity extends Activity{}{
	app in com_cleanmaster_mguard
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_AppMoveActivity extends Activity{}{
	app in com_cleanmaster_mguard
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_AppRestoreActivity extends Activity{}{
	app in com_cleanmaster_mguard
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_AppSystemMoveActivity extends Activity{}{
	app in com_cleanmaster_mguard
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_AppUninstallActivity extends Activity{}{
	app in com_cleanmaster_mguard
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_CacheCleanActivity extends Activity{}{
	app in com_cleanmaster_mguard
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_CallLogGroupManagerActivity extends Activity{}{
	app in com_cleanmaster_mguard
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_CampaignTrackingReceiver extends Receiver{}{
	app in com_cleanmaster_mguard
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_CampaignTrackingService extends Service{}{
	app in com_cleanmaster_mguard
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_CmAppRestoreActivity extends Activity{}{
	app in com_cleanmaster_mguard
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_CnAboutActivity extends Activity{}{
	app in com_cleanmaster_mguard
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_ConfCheckerActivity extends Activity{}{
	app in com_cleanmaster_mguard
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_ConnectivityChangeBroadcastReceiver extends Receiver{}{
	app in com_cleanmaster_mguard
	intentFilter = IntentFilter3
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_CrashFeedbackActivity extends Activity{}{
	app in com_cleanmaster_mguard
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_CrashReportService extends Service{}{
	app in com_cleanmaster_mguard
	intentFilter = IntentFilter4
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_DimensionalActivity extends Activity{}{
	app in com_cleanmaster_mguard
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_EmergencyCleanActivity extends Activity{}{
	app in com_cleanmaster_mguard
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_FeedBackActivity extends Activity{}{
	app in com_cleanmaster_mguard
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_FileManagerTabActivity extends Activity{}{
	app in com_cleanmaster_mguard
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_InstallUninstallBroadcastReceiver extends Receiver{}{
	app in com_cleanmaster_mguard
	intentFilter = IntentFilter5 + IntentFilter6
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_InsufficientDiskSpaceTip extends Activity{}{
	app in com_cleanmaster_mguard
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_JunkAdvanvcedActivity extends Activity{}{
	app in com_cleanmaster_mguard
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_JunkManagerActivity extends Activity{}{
	app in com_cleanmaster_mguard
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_JunkStandardActivity extends Activity{}{
	app in com_cleanmaster_mguard
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_LicenseActivity extends Activity{}{
	app in com_cleanmaster_mguard
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_LocalService extends Service{}{
	app in com_cleanmaster_mguard
	intentFilter = IntentFilter7
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_LocalWebActivity extends Activity{}{
	app in com_cleanmaster_mguard
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_MainActivity extends Activity{}{
	app in com_cleanmaster_mguard
	intentFilter = IntentFilter8 + IntentFilter8 + IntentFilter8
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_MainAppWidgetBlackProvider extends Receiver{}{
	app in com_cleanmaster_mguard
	intentFilter = IntentFilter9
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_MainAppWidgetWhiteProvider extends Receiver{}{
	app in com_cleanmaster_mguard
	intentFilter = IntentFilter10
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_MonitorInstallActivity extends Activity{}{
	app in com_cleanmaster_mguard
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_MonitorUninstallActivity extends Activity{}{
	app in com_cleanmaster_mguard
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_MultipleInstallBroadcastReceiver extends Receiver{}{
	app in com_cleanmaster_mguard
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_NotifyJunkCleanActivity extends Activity{}{
	app in com_cleanmaster_mguard
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_PcConnectService extends Service{}{
	app in com_cleanmaster_mguard
	intentFilter = IntentFilter11
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_PermanentService extends Service{}{
	app in com_cleanmaster_mguard
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_PrivacyCleanActivity extends Activity{}{
	app in com_cleanmaster_mguard
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_ProcessCleanerActivity extends Activity{}{
	app in com_cleanmaster_mguard
	intentFilter = IntentFilter12
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_ProcessManagerActivity extends Activity{}{
	app in com_cleanmaster_mguard
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_ProcessManagerSettingsActivity extends Activity{}{
	app in com_cleanmaster_mguard
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_ProcessWhiteListActivity extends Activity{}{
	app in com_cleanmaster_mguard
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_RecomendActivity extends Activity{}{
	app in com_cleanmaster_mguard
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_SDcardCleanerActivity extends Activity{}{
	app in com_cleanmaster_mguard
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_ScreenUnlockReceiver extends Receiver{}{
	app in com_cleanmaster_mguard
	intentFilter = IntentFilter13
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_SearchHistoryCleanerActivity extends Activity{}{
	app in com_cleanmaster_mguard
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_SetLanguageActivity extends Activity{}{
	app in com_cleanmaster_mguard
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_SettingsActivity extends Activity{}{
	app in com_cleanmaster_mguard
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_SmsGroupManagerActivity extends Activity{}{
	app in com_cleanmaster_mguard
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_SmsItemManagerActivity extends Activity{}{
	app in com_cleanmaster_mguard
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_SplashActivity extends Activity{}{
	app in com_cleanmaster_mguard
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_StorageStatusReceiver extends Receiver{}{
	app in com_cleanmaster_mguard
	intentFilter = IntentFilter14
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_ToucherAppBroadcastReceiver extends Receiver{}{
	app in com_cleanmaster_mguard
	intentFilter = IntentFilter15
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_UnRootAlertDialogActivity extends Activity{}{
	app in com_cleanmaster_mguard
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_UninstallBroadcastReceiver extends Receiver{}{
	app in com_cleanmaster_mguard
	intentFilter = IntentFilter6 + IntentFilter16
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_WhiteListActivity extends Activity{}{
	app in com_cleanmaster_mguard
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_WidgetGuideActivity extends Activity{}{
	app in com_cleanmaster_mguard
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_cleanmaster_mguard_WidgetService extends Service{}{
	app in com_cleanmaster_mguard
	intentFilter = IntentFilter17
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = CREATE_SHORTCUT_A
	no categories
	no data
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = INSTALL_REFERRER_A
	no categories
	no data
}

one sig IntentFilter3 extends IntentFilter{}{
	actions = CONNECTIVITY_CHANGE_A
	no categories
	no data
}

one sig IntentFilter4 extends IntentFilter{}{
	actions = report_A
	no categories
	no data
}

one sig IntentFilter5 extends IntentFilter{}{
	actions = PACKAGE_ADDED_A
	no categories
	data = NoMimeYesScheme
}

one sig IntentFilter6 extends IntentFilter{}{
	actions = PACKAGE_REMOVED_A
	no categories
	data = NoMimeYesScheme
}

one sig IntentFilter7 extends IntentFilter{}{
	actions = ACTION_ACT_A + ACTION_CMBOX_CLEANUP_A + ACTION_CMBOX_SETUP_A + ACTION_GET_APPLICATION_INFO_A + ACTION_GET_SYSTEM_MOVABLE_APPS_A + ACTION_MOVE_A + ACTION_RESTORE_A + ACTION_RESTORE_A
	no categories
	no data
}

one sig IntentFilter8 extends IntentFilter{}{
	actions = MAIN_A + gowidget_A
	categories = DEFAULT_C
	no data
}

one sig IntentFilter9 extends IntentFilter{}{
	actions = APPWIDGET_CLEAN_PROCESS_UPDATE_BLACK_A + APPWIDGET_DEFAULT_UPDATE_BLACK_A + APPWIDGET_FRESH_UPDATE_BLACK_A + APPWIDGET_START_CLEAN_PROCESS_UPDATE_BLACK_A + APPWIDGET_UPDATE_A
	no categories
	no data
}

one sig IntentFilter10 extends IntentFilter{}{
	actions = APPWIDGET_CLEAN_PROCESS_UPDATE_A + APPWIDGET_DEFAULT_UPDATE_A + APPWIDGET_FRESH_UPDATE_A + APPWIDGET_START_CLEAN_PROCESS_UPDATE_A + APPWIDGET_UPDATE_A
	no categories
	no data
}

one sig IntentFilter11 extends IntentFilter{}{
	actions = PcConnectServicex_A
	no categories
	no data
}

one sig IntentFilter12 extends IntentFilter{}{
	actions = MAIN_A
	no categories
	no data
}

one sig IntentFilter13 extends IntentFilter{}{
	actions = USER_PRESENT_A
	no categories
	no data
}

one sig IntentFilter14 extends IntentFilter{}{
	actions = MEDIA_EJECT_A + MEDIA_MOUNTED_A
	no categories
	data = NoMimeYesScheme
}

one sig IntentFilter15 extends IntentFilter{}{
	actions = action_toucher_click_advanced_clean_A
	no categories
	no data
}

one sig IntentFilter16 extends IntentFilter{}{
	actions = ACTION_REMOVED_SYSTEM_APP_A
	no categories
	no data
}

one sig IntentFilter17 extends IntentFilter{}{
	actions = ACTION_ADD_GO_WIDGET_A + ACTION_FASTCLEAN_A + ACTION_REMOVE_GO_WIDGET_A + ACTION_REPORT_ACTIVE_A + ACTION_RESET_FAST_CLEAN_A
	no categories
	no data
}


pred show(){
#Application=1
//#Component=61
//#IntentFilter=17
no Intent
#Data=4
}
run show
