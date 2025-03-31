module ICC 

open com_adam_aslfms
open com_android_shellms
open com_andybotting_tramhunter
open com_aripuca_tracker
open com_aselalee_trainschedule
open com_banasiak_coinflip
open com_better_alarm
open com_boardgamegeek
open com_brosmike_airpushdetector
open com_bwx_bequick
open com_casimirlab_simpleDeadlines
open com_dozingcatsoftware_bouncy
open com_frostwire_android
open com_ghostsq_commander_sftp
open com_github_andlyticsproject
open com_github_mobile
open com_googlecode_gtalksms
open com_googlecode_networklog
open com_hyperionics_fbreader_plugin_tts_plus
open com_ichi2_anki
open com_ihunda_android_binauralbeat
open com_jadn_cc
open com_kpz_pomodorotasks_activity
open com_lukekorth_screennotifications
open com_manor_currentwidget
open com_mareksebera_simpledilbert
open com_mridang_wifiinfo
open com_namelessdev_mpdroid
open com_nolanlawson_logcat
open com_opendoorstudios_ds4droid
open com_pindroid
open com_plusonelabs_calendar
open com_politedroid
open com_powerje_nyan
open com_purplefoto_pfdock
open com_rigid_birthdroid
open com_saibotd_bitbeaker
open com_scottmain_android_searchlight
open com_seavenois_tetris
open com_seawolfsanctuary_keepingtracks
open com_sweetiepiggy_everylocale
open com_tastycactus_timesheet
open com_tunes_viewer
open com_umang_dashnotifier
open com_uploadedlobster_PwdHash
open com_vlille_checker
open com_voidcode_diasporawebclient
open com_wanghaus_remembeer
open com_write_Quill
open com_xabber_androiddev

one sig intent1_1 extends Intent{}{
// com.adam.aslfms.UserCredsListScreen: void sendClearCreds()
	sender = com_adam_aslfms_UserCredsListScreen
	no component
	action = clearcreds_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent2_1 extends Intent{}{
// com.adam.aslfms.UserCredActivity: void sendClearCreds()
	sender = com_adam_aslfms_UserCredActivity
	no component
	action = clearcreds_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent3_1 extends Intent{}{
// com.adam.aslfms.UserCredActivity: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)
	sender = com_adam_aslfms_UserCredActivity
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent4_1 extends Intent{}{
// com.adam.aslfms.service.ScrobblingService: void queue(com.adam.aslfms.util.Track)
	sender = com_adam_aslfms_ScrobblingService
	no component
	action = onstatus_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent5_1 extends Intent{}{
// com.adam.aslfms.StatusInfoNetApp: void onListItemClick(android.widget.ListView,android.view.View,int,long)
	sender = com_adam_aslfms_StatusInfoNetApp
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent6_1 extends Intent{}{
// com.andybotting.tramhunter.activity.NearStopsActivity: void launchLocationSettings()
	sender = com_andybotting_tramhunter_NearStopsActivity
	no component
	action = LOCATION_SOURCE_SETTINGS_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent7_1 extends Intent{}{
// com.aripuca.tracker.service.AppService: void scheduleNextLocationRequest(int)
	sender = com_aripuca_tracker_AppService
	no component
	action = ACTION_NEXT_LOCATION_REQUEST_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent8_1 extends Intent{}{
// com.aripuca.tracker.service.AppService: void scheduleNextRequestTimeLimitCheck()
	sender = com_aripuca_tracker_AppService
	no component
	action = ACTION_NEXT_TIME_LIMIT_CHECK_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent9_1 extends Intent{}{
// com.aripuca.tracker.WaypointsListActivity: boolean onContextItemSelected(android.view.MenuItem)
	sender = com_aripuca_tracker_WaypointsListActivity
	no component
	action = SEND_A
	no categories
	extra = No
	data = YesMimeNoScheme
}



one sig intent10_1 extends Intent{}{
// com.aripuca.tracker.service.AppService$3: void onSensorChanged(android.hardware.SensorEvent)
	sender = com_aripuca_tracker_AppService
	no component
	action = ACTION_COMPASS_UPDATES_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent11_1 extends Intent{}{
// com.banasiak.coinflip.Settings$1: boolean onPreferenceClick(android.preference.Preference)
	sender = com_banasiak_coinflip_Settings
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent12_1 extends Intent{}{
// com.banasiak.coinflip.About$1: void onClick(android.view.View)
	sender = com_banasiak_coinflip_About
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent13_1 extends Intent{}{
// com.better.alarm.presenter.alert.AlarmAlertFullScreen: void onTimePickerCanceled(com.better.alarm.model.interfaces.Alarm)
	sender = com_better_alarm_AlarmAlertFullScreen
	no component
	action = ACTION_DEMUTE_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent14_1 extends Intent{}{
// com.better.alarm.presenter.SettingsActivity$6: void onClick(android.content.DialogInterface,int)
	sender = com_better_alarm_SettingsActivity
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent15_1 extends Intent{}{
// com.better.alarm.presenter.SettingsActivity$4: void onClick(android.content.DialogInterface,int)
	sender = com_better_alarm_SettingsActivity
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent16_1 extends Intent{}{
// com.better.alarm.presenter.SettingsActivity$2: void onClick(android.content.DialogInterface,int)
	sender = com_better_alarm_SettingsActivity
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent17_1 extends Intent{}{
// com.better.alarm.presenter.alert.AlarmAlertFullScreen$3: boolean onLongClick(android.view.View)
	sender = com_better_alarm_AlarmAlertFullScreen
	no component
	action = ACTION_MUTE_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent18_1 extends Intent{}{
// com.better.alarm.presenter.SettingsActivity: boolean onCreateOptionsMenu(android.view.Menu)
	sender = com_better_alarm_SettingsActivity
	no component
	action = SEND_A
	no categories
	extra = No
	data = YesMimeNoScheme
}



one sig intent19_1 extends Intent{}{
// com.better.alarm.presenter.background.ScheduledReceiver: void onReceive(android.content.Context,android.content.Intent)
	sender = com_better_alarm_ScheduledReceiver
	no component
	action = ALARM_CHANGED_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent20_1 extends Intent{}{
// com.boardgamegeek.ui.HomeActivity: boolean onOptionsItemSelected(com.actionbarsherlock.view.MenuItem)
	sender = com_boardgamegeek_HomeActivity
	no component
	action = SEND_A
	no categories
	extra = No
	data = YesMimeNoScheme
}



one sig intent21_1 extends Intent{}{
// com.boardgamegeek.ui.BuddiesActivity: boolean onBuddySelected(int,java.lang.String)
	sender = com_boardgamegeek_BuddiesActivity
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent22_1 extends Intent{}{
// com.boardgamegeek.pref.Preferences$1: boolean onPreferenceClick(android.preference.Preference)
	sender = com_boardgamegeek_Preferences
	no component
	action = SEARCH_SETTINGS_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent23_1 extends Intent{}{
// com.brosmike.airpushdetector.ReportActivity: void onReportButtonClick(android.view.View)
	sender = com_brosmike_airpushdetector_ReportActivity
	no component
	action = SEND_A
	no categories
	extra = No
	data = YesMimeNoScheme
}



one sig intent24_1 extends Intent{}{
// com.bwx.bequick.preferences.CommonPrefs: void openQuickerInMarket(android.app.Activity)
	sender = com_bwx_bequick_CommonPrefs
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent25_1 extends Intent{}{
// com.bwx.bequick.preferences.CommonPrefs: void updateStatusbarShortcut(android.content.SharedPreferences)
	sender = com_bwx_bequick_CommonPrefs
	no component
	action = UPDATE_STATUSBAR_INTEGRATION_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent26_1 extends Intent{}{
// com.bwx.bequick.preferences.CommonPrefs: boolean onPreferenceClick(android.preference.Preference)
	sender = com_bwx_bequick_CommonPrefs
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent27_1 extends Intent{}{
// com.bwx.bequick.preferences.CommonPrefs: void onSharedPreferenceChanged(android.content.SharedPreferences,java.lang.String)
	sender = com_bwx_bequick_CommonPrefs
	no component
	action = FLASHLIGHT_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent28_1 extends Intent{}{
// com.bwx.bequick.MainSettingsActivity: void onResume()
	sender = com_bwx_bequick_MainSettingsActivity
	no component
	action = START_QS_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent29_1 extends Intent{}{
// com.bwx.bequick.flashlight.LedFlashlightReceiver: void enableFlashlight(android.content.Context,boolean)
	sender = com_bwx_bequick_LedFlashlightReceiver
	no component
	action = FLASHLIGHT_STATE_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent30_1 extends Intent{}{
// com.bwx.bequick.flashlight.LedFlashlightReceiver: android.app.PendingIntent getPendingIntent(android.content.Context)
	sender = com_bwx_bequick_LedFlashlightReceiver
	no component
	action = WARN_FLASHLIGHT_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent31_1 extends Intent{}{
// com.casimirlab.simpleDeadlines.Settings$1$3: boolean onPreferenceClick(android.preference.Preference)
	sender = com_casimirlab_simpleDeadlines_Settings
	no component
	action = SEND_A
	no categories
	extra = No
	data = YesMimeNoScheme
}



one sig intent32_1 extends Intent{}{
// com.frostwire.android.market.BillingService: boolean bindToMarketBillingService()
	sender = com_frostwire_android_BillingService
	no component
	action = BIND_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent33_1 extends Intent{}{
// com.github.andlyticsproject.AppInfoActivity$1: void onClick(android.view.View)
	sender = com_github_andlyticsproject_AppInfoActivity
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent34_1 extends Intent{}{
// com.github.andlyticsproject.about.AboutActivity: void openBrowser(java.lang.String)
	sender = com_github_andlyticsproject_AboutActivity
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent35_1 extends Intent{}{
// com.github.andlyticsproject.io.ExportService: android.content.Intent createShareIntent()
	sender = com_github_andlyticsproject_ExportService
	no component
	action = SEND_A
	no categories
	extra = No
	data = YesMimeNoScheme
}



one sig intent36_1 extends Intent{}{
// com.github.mobile.ui.user.UriLauncherActivity: void onCreate(android.os.Bundle)
	sender = com_github_mobile_UriLauncherActivity
	no component
	action = VIEW_A
	categories = BROWSABLE_C
	extra = No
	data = NoMimeYesScheme
}



one sig intent37_1 extends Intent{}{
// com.googlecode.gtalksms.MainService: int onStartCommand(android.content.Intent,int,int)
	sender = com_googlecode_gtalksms_MainService
	no component
	action = CONNECT_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent38_1 extends Intent{}{
// com.googlecode.gtalksms.WidgetProvider: void doUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[],int)
	sender = com_googlecode_gtalksms_WidgetProvider
	no component
	action = ACTION_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent39_1 extends Intent{}{
// com.googlecode.gtalksms.receivers.PowerReceiver: void onReceive(android.content.Context,android.content.Intent)
	sender = com_googlecode_gtalksms_PowerReceiver
	no component
	action = CONNECT_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent40_1 extends Intent{}{
// com.googlecode.gtalksms.receivers.PowerReceiver$DisconnectDelayed: void run()
	sender = com_googlecode_gtalksms_PowerReceiver
	no component
	action = CONNECT_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent41_1 extends Intent{}{
// com.googlecode.gtalksms.panels.MainActivity: void onStart()
	sender = com_googlecode_gtalksms_MainActivity
	no component
	action = CONNECT_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent42_1 extends Intent{}{
// com.googlecode.gtalksms.receivers.BootReceiver: void onReceive(android.content.Context,android.content.Intent)
	sender = com_googlecode_gtalksms_BootReceiver
	no component
	action = CONNECT_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent43_1 extends Intent{}{
// com.googlecode.gtalksms.receivers.NetworkConnectivityReceiver: void onReceive(android.content.Context,android.content.Intent)
	sender = com_googlecode_gtalksms_NetworkConnectivityReceiver
	no component
	action = DISCONNECT_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent44_1 extends Intent{}{
// com.googlecode.gtalksms.KeyboardInputMethod: void onCreate()
	sender = com_googlecode_gtalksms_KeyboardInputMethod
	no component
	action = CONNECT_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent45_1 extends Intent{}{
// com.googlecode.gtalksms.panels.LogCollector: void sendLog(java.lang.String)
	sender = com_googlecode_gtalksms_LogCollector
	no component
	action = SEND_A
	no categories
	extra = No
	data = YesMimeNoScheme
}



one sig intent46_1 extends Intent{}{
// com.googlecode.gtalksms.panels.GeoPopup$1: void onClick(android.content.DialogInterface,int)
	sender = com_googlecode_gtalksms_GeoPopup
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent47_1 extends Intent{}{
// com.hyperionics.fbreader.plugin.tts_plus.SpeakActivity$11: void onClick(android.view.View)
	sender = com_hyperionics_fbreader_plugin_tts_plus_SpeakActivity
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent48_1 extends Intent{}{
// com.hyperionics.fbreader.plugin.tts_plus.SpeakActivity$20: void onClick(android.content.DialogInterface,int)
	sender = com_hyperionics_fbreader_plugin_tts_plus_SpeakActivity
	no component
	action = INSTALL_TTS_DATA_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent49_1 extends Intent{}{
// com.hyperionics.fbreader.plugin.tts_plus.SettingsActivity$10: void onClick(android.view.View)
	sender = com_hyperionics_fbreader_plugin_tts_plus_SettingsActivity
	no component
	action = TTS_SETTINGS_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent50_1 extends Intent{}{
// com.hyperionics.fbreader.plugin.tts_plus.SpeakService$3: void onClick(android.content.DialogInterface,int)
	sender = com_hyperionics_fbreader_plugin_tts_plus_SpeakService
	no component
	action = INSTALL_TTS_DATA_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent51_1 extends Intent{}{
// com.hyperionics.fbreader.plugin.tts_plus.SpeakService: int onStartCommand(android.content.Intent,int,int)
	sender = com_hyperionics_fbreader_plugin_tts_plus_SpeakService
	no component
	action = SVC_STARTED_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent52_1 extends Intent{}{
// com.hyperionics.fbreader.plugin.tts_plus.SpeakActivity: void onActivityResult(int,int,android.content.Intent)
	sender = com_hyperionics_fbreader_plugin_tts_plus_SpeakActivity
	no component
	action = INSTALL_TTS_DATA_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent53_1 extends Intent{}{
// com.hyperionics.fbreader.plugin.tts_plus.SpeakActivity: void selectLanguage(boolean)
	sender = com_hyperionics_fbreader_plugin_tts_plus_SpeakActivity
	no component
	action = CHECK_TTS_DATA_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent54_1 extends Intent{}{
// com.hyperionics.fbreader.plugin.tts_plus.SpeakActivity$7$1: void onClick(android.content.DialogInterface,int)
	sender = com_hyperionics_fbreader_plugin_tts_plus_SpeakActivity
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent55_1 extends Intent{}{
// com.ichi2.anki.receiver.SdCardReceiver: void onReceive(android.content.Context,android.content.Intent)
	sender = com_ichi2_anki_SdCardReceiver
	no component
	action = MEDIA_MOUNT_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent56_1 extends Intent{}{
// com.ichi2.anki.Preferences$3: void onClick(android.content.DialogInterface,int)
	sender = com_ichi2_anki_Preferences
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent57_1 extends Intent{}{
// com.ichi2.anki.Info$1: void onClick(android.view.View)
	sender = com_ichi2_anki_Info
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent58_1 extends Intent{}{
// com.ihunda.android.binauralbeat.BBeat: void gotoURL(java.lang.String)
	sender = com_ihunda_android_binauralbeat_BBeat
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent59_1 extends Intent{}{
// com.ihunda.android.binauralbeat.BBeat: void donatePayPalOnClick()
	sender = com_ihunda_android_binauralbeat_BBeat
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent60_1 extends Intent{}{
// com.ihunda.android.binauralbeat.BBeat: void shareWith(java.lang.String,java.lang.String)
	sender = com_ihunda_android_binauralbeat_BBeat
	no component
	action = SEND_A
	no categories
	extra = No
	data = YesMimeNoScheme
}



one sig intent61_1 extends Intent{}{
// com.jadn.cc.ui.Subscriptions: void exportOpml()
	sender = com_jadn_cc_Subscriptions
	no component
	action = SEND_A
	no categories
	extra = No
	data = YesMimeNoScheme
}



one sig intent62_1 extends Intent{}{
// com.jadn.cc.ui.Downloader: boolean onMenuItemSelected(int,android.view.MenuItem)
	sender = com_jadn_cc_Downloader
	no component
	action = SEND_A
	no categories
	extra = No
	data = YesMimeNoScheme
}



one sig intent63_1 extends Intent{}{
// com.jadn.cc.ui.Settings: void onStop()
	sender = com_jadn_cc_Settings
	no component
	action = AlarmHostService_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent64_1 extends Intent{}{
// com.jadn.cc.ui.CarCast$5: void onClick(android.content.DialogInterface,int)
	sender = com_jadn_cc_CarCast
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent65_1 extends Intent{}{
// com.jadn.cc.ui.FeedbackHelp: void ccwebsite(android.view.View)
	sender = com_jadn_cc_FeedbackHelp
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent66_1 extends Intent{}{
// com.jadn.cc.ui.FeedbackHelp: void email(android.view.View)
	sender = com_jadn_cc_FeedbackHelp
	no component
	action = SEND_A
	no categories
	extra = No
	data = YesMimeNoScheme
}



one sig intent67_1 extends Intent{}{
// com.jadn.cc.ui.FeedbackHelp: void qanda(android.view.View)
	sender = com_jadn_cc_FeedbackHelp
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent68_1 extends Intent{}{
// com.jadn.cc.ui.FeedbackHelp: void quickTour(android.view.View)
	sender = com_jadn_cc_FeedbackHelp
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent69_1 extends Intent{}{
// com.jadn.cc.services.AlarmReceiver: void onReceive(android.content.Context,android.content.Intent)
	sender = com_jadn_cc_AlarmReceiver
	no component
	action = AlarmHostService_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent70_1 extends Intent{}{
// com.lukekorth.screennotifications.ScreenNotificationsActivity$4: void onClick(android.content.DialogInterface,int)
	sender = com_lukekorth_screennotifications_ScreenNotificationsActivity
	no component
	action = ACCESSIBILITY_SETTINGS_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent71_1 extends Intent{}{
// com.manor.currentwidget.library.ExcludedAppsActivity: void onCreate(android.os.Bundle)
	sender = com_manor_currentwidget_ExcludedAppsActivity
	no component
	action = MAIN_A
	categories = LAUNCHER_C
	extra = No
	data = NoMimeYesScheme
}



one sig intent72_1 extends Intent{}{
// com.mareksebera.simpledilbert.preferences.DilbertPreferencesActivity: void updateWidgets()
	sender = com_mareksebera_simpledilbert_DilbertPreferencesActivity
	no component
	action = APPWIDGET_UPDATE_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent73_1 extends Intent{}{
// com.mareksebera.simpledilbert.preferences.DilbertPreferencesActivity$4: void onClick(android.view.View)
	sender = com_mareksebera_simpledilbert_DilbertPreferencesActivity
	no component
	action = SENDTO_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent74_1 extends Intent{}{
// com.mareksebera.simpledilbert.preferences.DilbertPreferencesActivity$2: void onClick(android.view.View)
	sender = com_mareksebera_simpledilbert_DilbertPreferencesActivity
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent75_1 extends Intent{}{
// com.namelessdev.mpdroid.StreamingService: void registerRemoteControlClient()
	sender = com_namelessdev_mpdroid_StreamingService
	no component
	action = MEDIA_BUTTON_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent76_1 extends Intent{}{
// com.namelessdev.mpdroid.StreamingService: void onDestroy()
	sender = com_namelessdev_mpdroid_StreamingService
	no component
	action = PLAYBACK_VIEWER_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent77_1 extends Intent{}{
// com.nolanlawson.logcat.AboutActivity: void a(com.nolanlawson.logcat.AboutActivity,java.lang.String)
	sender = com_nolanlawson_logcat_AboutActivity
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent78_1 extends Intent{}{
// com.nolanlawson.logcat.SettingsActivity: void a(com.nolanlawson.logcat.SettingsActivity)
	sender = com_nolanlawson_logcat_SettingsActivity
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent79_1 extends Intent{}{
// com.nolanlawson.logcat.LogcatRecordingService: void onStart(android.content.Intent,int)
	sender = com_nolanlawson_logcat_LogcatRecordingService
	no component
	action = STOP_RECORDING_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent80_1 extends Intent{}{
// com.pindroid.activity.Preferences$5: boolean onPreferenceClick(android.preference.Preference)
	sender = com_pindroid_Preferences
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent81_1 extends Intent{}{
// com.pindroid.activity.Preferences$7: boolean onPreferenceClick(android.preference.Preference)
	sender = com_pindroid_Preferences
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent82_1 extends Intent{}{
// com.pindroid.activity.Preferences$4: boolean onPreferenceClick(android.preference.Preference)
	sender = com_pindroid_Preferences
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent83_1 extends Intent{}{
// com.pindroid.activity.Preferences$3: boolean onPreferenceClick(android.preference.Preference)
	sender = com_pindroid_Preferences
	no component
	action = SYNC_SETTINGS_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent84_1 extends Intent{}{
// com.pindroid.dashclock.PinDroidExtension: android.content.Intent ViewBookmarks()
	sender = com_pindroid_PinDroidExtension
	no component
	action = VIEW_A
	categories = DEFAULT_C
	extra = No
	data = NoMimeYesScheme
}



one sig intent85_1 extends Intent{}{
// com.purplefoto.pfdock.PFDock: void btnClickedGoogleMaps(android.view.View)
	sender = com_purplefoto_pfdock_PFDock
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent86_1 extends Intent{}{
// com.purplefoto.pfdock.PFDock: void btnClickedPhone(android.view.View)
	sender = com_purplefoto_pfdock_PFDock
	no component
	action = DIAL_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent87_1 extends Intent{}{
// com.purplefoto.pfdock.PFDock: void launchCustomServiceButton(java.lang.String,java.lang.String)
	sender = com_purplefoto_pfdock_PFDock
	no component
	action = LAUNCHER_A
	categories = LAUNCHER_C
	extra = No
	data = NoMimeNoScheme
}



one sig intent88_1 extends Intent{}{
// com.rigid.birthdroid.BirthdroidWidget$BirthdroidService: void onStart(android.content.Intent,int)
	sender = com_rigid_birthdroid_BirthdroidWidget
	no component
	action = CLICK_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent89_1 extends Intent{}{
// com.saibotd.bitbeaker.activities.SourceActivity$AsyncFileLoader: void onPostExecute(java.io.File)
	sender = com_saibotd_bitbeaker_SourceActivity
	no component
	action = VIEW_A
	no categories
	extra = No
	data = YesMimeYesScheme
}



one sig intent90_1 extends Intent{}{
// com.seavenois.tetris.Game$8: void onClick(android.content.DialogInterface,int)
	sender = com_seavenois_tetris_Game
	no component
	action = SEND_A
	no categories
	extra = No
	data = YesMimeNoScheme
}



one sig intent91_1 extends Intent{}{
// com.seavenois.tetris.Donate: void onCreate(android.os.Bundle)
	sender = com_seavenois_tetris_Donate
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent92_1 extends Intent{}{
// com.seawolfsanctuary.keepingtracks.MenuActivity: boolean onOptionsItemSelected(com.actionbarsherlock.view.MenuItem)
	sender = com_seawolfsanctuary_keepingtracks_MenuActivity
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent93_1 extends Intent{}{
// com.seawolfsanctuary.keepingtracks.stats.ClassesUsed$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)
	sender = com_seawolfsanctuary_keepingtracks_ClassesUsed
	no component
	action = VIEW_A
	no categories
	extra = No
	data = YesMimeYesScheme
}



one sig intent94_1 extends Intent{}{
// com.seawolfsanctuary.keepingtracks.DataFileActivity$1: boolean onItemLongClick(android.widget.AdapterView,android.view.View,int,long)
	sender = com_seawolfsanctuary_keepingtracks_DataFileActivity
	no component
	action = VIEW_A
	no categories
	extra = No
	data = YesMimeYesScheme
}



one sig intent95_1 extends Intent{}{
// com.tastycactus.timesheet.ExportActivity: void sendEmail(android.content.Context)
	sender = com_tastycactus_timesheet_ExportActivity
	no component
	action = SEND_A
	no categories
	extra = No
	data = YesMimeNoScheme
}



one sig intent96_1 extends Intent{}{
// com.tunes.viewer.TunesViewerActivity: void onResume()
	sender = com_tunes_viewer_TunesViewerActivity
	no component
	action = DOWNLOADED_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent97_1 extends Intent{}{
// com.tunes.viewer.Bookmarks.BookmarksActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)
	sender = com_tunes_viewer_BookmarksActivity
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent98_1 extends Intent{}{
// com.tunes.viewer.Searcher: void search()
	sender = com_tunes_viewer_Searcher
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent99_1 extends Intent{}{
// com.umang.dashnotifier.ClickIntentActivity: void onCreate(android.os.Bundle)
	sender = com_umang_dashnotifier_ClickIntentActivity
	no component
	action = MAIN_A
	categories = HOME_C
	extra = No
	data = NoMimeNoScheme
}



one sig intent100_1 extends Intent{}{
// com.voidcode.diasporawebclient.TranslateActivity: void onlick_goto_googleapiconsole(android.view.View)
	sender = com_voidcode_diasporawebclient_TranslateActivity
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent101_1 extends Intent{}{
// com.voidcode.diasporawebclient.TranslateActivity: void onlick_howto_obtain_googletranslatekey(android.view.View)
	sender = com_voidcode_diasporawebclient_TranslateActivity
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent102_1 extends Intent{}{
// com.voidcode.diasporawebclient.SetupInternetActivity: void onclick_button_wireless_settings(android.view.View)
	sender = com_voidcode_diasporawebclient_SetupInternetActivity
	no component
	action = WIRELESS_SETTINGS_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent103_1 extends Intent{}{
// com.voidcode.diasporawebclient.MainActivity$2: boolean shouldOverrideUrlLoading(android.webkit.WebView,java.lang.String)
	sender = com_voidcode_diasporawebclient_MainActivity
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent104_1 extends Intent{}{
// com.wanghaus.remembeer.activity.AddBeer$9: void onClick(android.content.DialogInterface,int)
	sender = com_wanghaus_remembeer_AddBeer
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent105_1 extends Intent{}{
// com.wanghaus.remembeer.activity.ImportExport$1: void onClick(android.view.View)
	sender = com_wanghaus_remembeer_ImportExport
	no component
	action = SEND_A
	no categories
	extra = No
	data = YesMimeNoScheme
}



one sig intent106_1 extends Intent{}{
// com.wanghaus.remembeer.activity.AddBeer: void doScan()
	sender = com_wanghaus_remembeer_AddBeer
	no component
	action = SCAN_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent107_1 extends Intent{}{
// com.wanghaus.remembeer.activity.AddBeer: void initScanButton()
	sender = com_wanghaus_remembeer_AddBeer
	no component
	action = SCAN_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent108_1 extends Intent{}{
// com.write.Quill.export.ExportActivity: void doShareEvernote(java.io.File)
	sender = com_write_Quill_ExportActivity
	no component
	action = CREATE_NEW_NOTE_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent109_1 extends Intent{}{
// com.write.Quill.export.ExportActivity: void doShareGeneric(java.io.File)
	sender = com_write_Quill_ExportActivity
	no component
	action = SEND_A
	no categories
	extra = No
	data = YesMimeNoScheme
}



one sig intent110_1 extends Intent{}{
// com.write.Quill.export.ExportActivity: void doShareView(java.io.File)
	sender = com_write_Quill_ExportActivity
	no component
	action = VIEW_A
	no categories
	extra = No
	data = YesMimeYesScheme
}



one sig intent111_1 extends Intent{}{
// com.write.Quill.export.ExportActivity$4: void onClick(android.content.DialogInterface,int)
	sender = com_write_Quill_ExportActivity
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent112_1 extends Intent{}{
// com.write.Quill.image.ImageActivity: boolean onOptionsItemSelected(android.view.MenuItem)
	sender = com_write_Quill_ImageActivity
	no component
	action = IMAGE_CAPTURE_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



check vulnerableConnection

fact {
//#Application=50
//#Component=515
//#IntentFilter=152
//#Intent=112
#Data=4
}

pred show{}
run show
