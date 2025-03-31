module ICC 

open co_vine_android
open com_adobe_air
open com_adobe_reader
open com_amazon_kindle
open com_bigduckgames_flow
open com_bitstrips_bitstrips
open com_cleanmaster_mguard
open com_clearchannel_iheartradio_controller
open com_dropbox_android
open com_duduapps_craigslistfree
open com_ea_game_monopolybingo_na
open com_fatbatstudio_archery
open com_foranj_farmtown
open com_g6677_android_lpetvet
open com_gamecircus_moviez
open com_gamecircus_songz
open com_gameloft_android_ANMP_GloftDMHM
open com_glu_deerhunt2
open com_google_android_apps_translate
open com_google_android_youtube
open com_google_earth
open com_google_zxing_client_android
open com_halfbrick_fruitninjafree
open com_happymage_google_fashionModelMakeover
open com_hulu_plus
open com_imangi_templerun2
open com_instagram_android
open com_kiloo_subwaysurf
open com_king_candycrushsaga
open com_king_petrescuesaga
open com_magicjack
open com_playdom_marvelavengers
open com_mobilityware_solitaire
open com_netflix_mediaclient

one sig intent1_1 extends Intent{}{
// co.vine.android.service.VineUploadService$ServiceAsyncTask: void onComplete()
	sender = co_vine_android_VineUploadService
	no component
	action = UPLOAD_RESULT_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent2_1 extends Intent{}{
// co.vine.android.PostOptionsDialogActivity: void onDialogDone(android.content.DialogInterface,int,int)
	sender = co_vine_android_PostOptionsDialogActivity
	no component
	action = action_delete_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent3_1 extends Intent{}{
// co.vine.android.CameraWidgetConfigureActivity: void setupShortcut(android.content.Context)
	sender = co_vine_android_CameraWidgetConfigureActivity
	no component
	action = INSTALL_SHORTCUT_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent4_1 extends Intent{}{
// com.adobe.air.AdobeAIR$1: boolean shouldOverrideUrlLoading(android.webkit.WebView,java.lang.String)
	sender = com_adobe_air_AdobeAIR
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent5_1 extends Intent{}{
// com.adobe.air.AIRService: void downloadDone(boolean)
	sender = com_adobe_air_AIRService
	no component
	action = DownloadConfigComplete_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent6_1 extends Intent{}{
// com.adobe.air.GamePreviewAppEntry: void launchAIRService()
	sender = com_adobe_air_GamePreviewAppEntry
	no component
	action = AIRServiceAction_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent7_1 extends Intent{}{
// com.adobe.reader.viewer.ARViewerActivity: void shareDocumentInternal(java.lang.String)
	sender = com_adobe_reader_ARViewerActivity
	no component
	action = SEND_A
	no categories
	extra = No
	data = YesMimeNoScheme
}



one sig intent8_1 extends Intent{}{
// com.adobe.reader.viewer.ARViewerActivity: void emailFile(java.lang.String,java.lang.String)
	sender = com_adobe_reader_ARViewerActivity
	no component
	action = SEND_A
	no categories
	extra = No
	data = YesMimeNoScheme
}



one sig intent9_1 extends Intent{}{
// com.adobe.reader.viewer.ARViewerActivity: void openNonPDFFile(java.lang.String)
	sender = com_adobe_reader_ARViewerActivity
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent10_1 extends Intent{}{
// com.adobe.reader.misc.ARFileTransferActivity: void onDestroy()
	sender = com_adobe_reader_ARFileTransferActivity
	no component
	action = URLCancelDownload_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent11_1 extends Intent{}{
// com.adobe.reader.misc.ARFileTransferActivity: void onRestart()
	sender = com_adobe_reader_ARFileTransferActivity
	no component
	action = onRestart_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent12_1 extends Intent{}{
// com.adobe.reader.misc.ARFileTransferActivity: void onStop()
	sender = com_adobe_reader_ARFileTransferActivity
	no component
	action = onStop_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent13_1 extends Intent{}{
// com.adobe.reader.services.ARFileTransferService: int onStartCommand(android.content.Intent,int,int)
	sender = com_adobe_reader_ARFileTransferService
	no component
	action = URLDismissDownload_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent14_1 extends Intent{}{
// com.adobe.reader.echosign.ARSendForSignature: void onRestart()
	sender = com_adobe_reader_ARSendForSignature
	no component
	action = onRestart_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent15_1 extends Intent{}{
// com.adobe.reader.echosign.ARSendForSignature: void onStop()
	sender = com_adobe_reader_ARSendForSignature
	no component
	action = onStop_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent16_1 extends Intent{}{
// com.adobe.reader.echosign.ARSendForSignature$1: void onReceive(android.content.Context,android.content.Intent)
	sender = com_adobe_reader_ARSendForSignature
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent17_1 extends Intent{}{
// com.adobe.reader.echosign.AREchoSignUploadService$UploadTask: void onPostExecute(java.lang.Void)
	sender = com_adobe_reader_AREchoSignUploadService
	no component
	action = complete_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent18_1 extends Intent{}{
// com.adobe.reader.services.epdf.ARExportPDFOptionsActivity: void onExportClicked()
	sender = com_adobe_reader_ARExportPDFOptionsActivity
	no component
	action = exportStarted_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent19_1 extends Intent{}{
// com.amazon.kindle.s2k.SendToKindleService$SendDocument: void showFileReadErrorMsg()
	sender = com_amazon_kindle_SendToKindleService
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent20_1 extends Intent{}{
// com.bitstrips.bitstrips.AppEntry: void launchAIRService()
	sender = com_bitstrips_bitstrips_AppEntry
	no component
	action = AIRServiceAction_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent21_1 extends Intent{}{
// com.dropbox.android.activity.auth.DropboxAuth: void n()
	sender = com_dropbox_android_DropboxAuth
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent22_1 extends Intent{}{
// com.dropbox.android.activity.auth.DropboxAuth: android.content.Intent p()
	sender = com_dropbox_android_DropboxAuth
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent23_1 extends Intent{}{
// com.dropbox.android.activity.LocalFileBrowserActivity: void a(android.net.Uri)
	sender = com_dropbox_android_LocalFileBrowserActivity
	no component
	action = SEND_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent24_1 extends Intent{}{
// com.dropbox.android.activity.PrefsActivity: void a(android.content.Context,java.lang.String,java.lang.String,java.lang.String)
	sender = com_dropbox_android_PrefsActivity
	no component
	action = SEND_A
	no categories
	extra = No
	data = YesMimeNoScheme
}



one sig intent25_1 extends Intent{}{
// com.dropbox.android.activity.GalleryActivity: void onBackPressed()
	sender = com_dropbox_android_GalleryActivity
	no component
	action = PICK_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent26_1 extends Intent{}{
// com.dropbox.android.activity.DropboxGetFrom: void a(java.io.File,com.dropbox.android.filemanager.LocalEntry,android.content.Context)
	sender = com_dropbox_android_DropboxGetFrom
	no component
	action = CROP_A
	no categories
	extra = No
	data = YesMimeYesScheme
}



one sig intent27_1 extends Intent{}{
// com.dropbox.android.service.ReportReceiver: android.app.PendingIntent a(android.content.Context)
	sender = com_dropbox_android_ReportReceiver
	no component
	action = REPORT_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent28_1 extends Intent{}{
// com.dropbox.android.activity.SsoCallbackReceiver: boolean a(android.content.Context)
	sender = com_dropbox_android_SsoCallbackReceiver
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent29_1 extends Intent{}{
// com.dropbox.android.activity.SsoCallbackReceiver: void onResume()
	sender = com_dropbox_android_SsoCallbackReceiver
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent30_1 extends Intent{}{
// com.dropbox.android.activity.TextEditActivity: void g()
	sender = com_dropbox_android_TextEditActivity
	no component
	no action
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent31_1 extends Intent{}{
// com.gameloft.android.ANMP.GloftDMHM.installer.GameInstaller: void c(int)
	sender = com_gameloft_android_ANMP_GloftDMHM_GameInstaller
	no component
	action = WIFI_SETTINGS_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent32_1 extends Intent{}{
// com.gameloft.android.ANMP.GloftDMHM.installer.GameInstaller: void b(int)
	sender = com_gameloft_android_ANMP_GloftDMHM_GameInstaller
	no component
	action = WIRELESS_SETTINGS_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent33_1 extends Intent{}{
// com.gameloft.android.ANMP.GloftDMHM.AdServerVideos: void access$800(com.gameloft.android.ANMP.GloftDMHM.AdServerVideos,java.lang.String)
	sender = com_gameloft_android_ANMP_GloftDMHM_AdServerVideos
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent34_1 extends Intent{}{
// com.gameloft.android.ANMP.GloftDMHM.AdServerVideos: void d(java.lang.String)
	sender = com_gameloft_android_ANMP_GloftDMHM_AdServerVideos
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent35_1 extends Intent{}{
// com.gameloft.android.ANMP.GloftDMHM.AdServerVideos: void a(java.lang.String)
	sender = com_gameloft_android_ANMP_GloftDMHM_AdServerVideos
	no component
	action = MAIN_A
	categories = LAUNCHER_C
	extra = No
	data = NoMimeNoScheme
}



one sig intent36_1 extends Intent{}{
// com.gameloft.android.ANMP.GloftDMHM.installer.IReferrerReceiver: void sendBroadcastIntent(android.content.Context)
	sender = com_gameloft_android_ANMP_GloftDMHM_IReferrerReceiver
	no component
	action = INSTALL_REFERRER_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent37_1 extends Intent{}{
// com.gameloft.android.ANMP.GloftDMHM.IGPFreemiumActivity: void a(java.lang.String)
	sender = com_gameloft_android_ANMP_GloftDMHM_IGPFreemiumActivity
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent38_1 extends Intent{}{
// com.gameloft.android.ANMP.GloftDMHM.IGPFreemiumActivity: void access$500(com.gameloft.android.ANMP.GloftDMHM.IGPFreemiumActivity,java.lang.String)
	sender = com_gameloft_android_ANMP_GloftDMHM_IGPFreemiumActivity
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent39_1 extends Intent{}{
// com.gameloft.android.ANMP.GloftDMHM.IGPFreemiumActivity: void access$700(com.gameloft.android.ANMP.GloftDMHM.IGPFreemiumActivity,java.lang.String)
	sender = com_gameloft_android_ANMP_GloftDMHM_IGPFreemiumActivity
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent40_1 extends Intent{}{
// com.gameloft.android.ANMP.GloftDMHM.IGPFreemiumActivity: void b(java.lang.String)
	sender = com_gameloft_android_ANMP_GloftDMHM_IGPFreemiumActivity
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent41_1 extends Intent{}{
// com.gameloft.android.ANMP.GloftDMHM.SplashScreenActivity: void access$400(com.gameloft.android.ANMP.GloftDMHM.SplashScreenActivity,java.lang.String)
	sender = com_gameloft_android_ANMP_GloftDMHM_SplashScreenActivity
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent42_1 extends Intent{}{
// com.gameloft.android.ANMP.GloftDMHM.SplashScreenActivity: void access$500(com.gameloft.android.ANMP.GloftDMHM.SplashScreenActivity,java.lang.String)
	sender = com_gameloft_android_ANMP_GloftDMHM_SplashScreenActivity
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent43_1 extends Intent{}{
// com.gameloft.android.ANMP.GloftDMHM.SplashScreenActivity: void access$700(com.gameloft.android.ANMP.GloftDMHM.SplashScreenActivity,java.lang.String)
	sender = com_gameloft_android_ANMP_GloftDMHM_SplashScreenActivity
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent44_1 extends Intent{}{
// com.gameloft.android.ANMP.GloftDMHM.SplashScreenActivity: void b(java.lang.String)
	sender = com_gameloft_android_ANMP_GloftDMHM_SplashScreenActivity
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent45_1 extends Intent{}{
// com.gameloft.android.ANMP.GloftDMHM.SplashScreenActivity: void c(java.lang.String)
	sender = com_gameloft_android_ANMP_GloftDMHM_SplashScreenActivity
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent46_1 extends Intent{}{
// com.gameloft.android.ANMP.GloftDMHM.SplashScreenActivity: void d(java.lang.String)
	sender = com_gameloft_android_ANMP_GloftDMHM_SplashScreenActivity
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent47_1 extends Intent{}{
// com.gameloft.android.ANMP.GloftDMHM.SplashScreenActivity: void a(java.lang.String)
	sender = com_gameloft_android_ANMP_GloftDMHM_SplashScreenActivity
	no component
	action = MAIN_A
	categories = LAUNCHER_C
	extra = No
	data = NoMimeNoScheme
}



one sig intent48_1 extends Intent{}{
// com.gameloft.android.ANMP.GloftDMHM.Game: void Pause()
	sender = com_gameloft_android_ANMP_GloftDMHM_Game
	no component
	action = MAIN_A
	categories = HOME_C
	extra = No
	data = NoMimeNoScheme
}



one sig intent49_1 extends Intent{}{
// com.gameloft.android.ANMP.GloftDMHM.Game: void openBrowser(java.lang.String)
	sender = com_gameloft_android_ANMP_GloftDMHM_Game
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent50_1 extends Intent{}{
// com.gameloft.android.ANMP.GloftDMHM.Game: void sendAppToBackground()
	sender = com_gameloft_android_ANMP_GloftDMHM_Game
	no component
	action = MAIN_A
	categories = HOME_C
	extra = No
	data = NoMimeNoScheme
}



one sig intent51_1 extends Intent{}{
// com.gameloft.android.ANMP.GloftDMHM.InGameBrowser: void access$400(com.gameloft.android.ANMP.GloftDMHM.InGameBrowser,java.lang.String)
	sender = com_gameloft_android_ANMP_GloftDMHM_InGameBrowser
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent52_1 extends Intent{}{
// com.gameloft.android.ANMP.GloftDMHM.InGameBrowser: void access$500(com.gameloft.android.ANMP.GloftDMHM.InGameBrowser,java.lang.String)
	sender = com_gameloft_android_ANMP_GloftDMHM_InGameBrowser
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent53_1 extends Intent{}{
// com.gameloft.android.ANMP.GloftDMHM.InGameBrowser: void access$600(com.gameloft.android.ANMP.GloftDMHM.InGameBrowser,java.lang.String)
	sender = com_gameloft_android_ANMP_GloftDMHM_InGameBrowser
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent54_1 extends Intent{}{
// com.gameloft.android.ANMP.GloftDMHM.InGameBrowser: void access$700(com.gameloft.android.ANMP.GloftDMHM.InGameBrowser,java.lang.String)
	sender = com_gameloft_android_ANMP_GloftDMHM_InGameBrowser
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent55_1 extends Intent{}{
// com.gameloft.android.ANMP.GloftDMHM.InGameBrowser: void c(java.lang.String)
	sender = com_gameloft_android_ANMP_GloftDMHM_InGameBrowser
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent56_1 extends Intent{}{
// com.gameloft.android.ANMP.GloftDMHM.InGameBrowser: void d(java.lang.String)
	sender = com_gameloft_android_ANMP_GloftDMHM_InGameBrowser
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent57_1 extends Intent{}{
// com.gameloft.android.ANMP.GloftDMHM.InGameBrowser: void e(java.lang.String)
	sender = com_gameloft_android_ANMP_GloftDMHM_InGameBrowser
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent58_1 extends Intent{}{
// com.gameloft.android.ANMP.GloftDMHM.InGameBrowser: void f(java.lang.String)
	sender = com_gameloft_android_ANMP_GloftDMHM_InGameBrowser
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent59_1 extends Intent{}{
// com.google.android.youtube.app.froyo.widget.WidgetProvider: android.app.PendingIntent f(android.content.Context)
	sender = com_google_android_youtube_WidgetProvider
	no component
	action = widget_update_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent60_1 extends Intent{}{
// com.google.android.youtube.app.notification.ExternalPlaybackControllerV14: void <init>(android.content.Context,com.google.android.apps.youtube.app.notification.l)
	sender = com_google_android_youtube_ExternalPlaybackControllerV14
	no component
	action = MEDIA_BUTTON_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent61_1 extends Intent{}{
// com.google.earth.EarthActivity: void d(android.net.Uri)
	sender = com_google_earth_EarthActivity
	no component
	action = SEND_A
	no categories
	extra = No
	data = YesMimeNoScheme
}



one sig intent62_1 extends Intent{}{
// com.google.earth.EarthActivity: boolean onCreateOptionsMenu(android.view.Menu)
	sender = com_google_earth_EarthActivity
	no component
	action = BUG_REPORT_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent63_1 extends Intent{}{
// com.google.zxing.client.android.encode.EncodeActivity: boolean onOptionsItemSelected(android.view.MenuItem)
	sender = com_google_zxing_client_android_EncodeActivity
	no component
	action = SEND_A
	no categories
	extra = No
	data = YesMimeYesScheme
}



one sig intent64_1 extends Intent{}{
// com.google.zxing.client.android.history.HistoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)
	sender = com_google_zxing_client_android_HistoryActivity
	no component
	action = SEND_A
	no categories
	extra = No
	data = YesMimeYesScheme
}



one sig intent65_1 extends Intent{}{
// com.google.zxing.client.android.share.ShareActivity: void access$000(com.google.zxing.client.android.share.ShareActivity,java.lang.String)
	sender = com_google_zxing_client_android_ShareActivity
	no component
	action = ENCODE_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent66_1 extends Intent{}{
// com.google.zxing.client.android.share.ShareActivity: void showContactAsBarcode(android.net.Uri)
	sender = com_google_zxing_client_android_ShareActivity
	no component
	action = ENCODE_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent67_1 extends Intent{}{
// com.google.zxing.client.android.share.ShareActivity: void onActivityResult(int,int,android.content.Intent)
	sender = com_google_zxing_client_android_ShareActivity
	no component
	action = ENCODE_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent68_1 extends Intent{}{
// com.google.zxing.client.android.share.ShareActivity$1: void onClick(android.view.View)
	sender = com_google_zxing_client_android_ShareActivity
	no component
	action = PICK_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent69_1 extends Intent{}{
// com.instagram.android.service.PendingMediaService: void sendCheckpointBroadcast(java.lang.String)
	sender = com_instagram_android_PendingMediaService
	no component
	action = BROADCAST_INTENT_CHECKPOINT_REQUIRED_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent70_1 extends Intent{}{
// com.instagram.android.service.PendingMediaService: void sendNewMediaBroadcast()
	sender = com_instagram_android_PendingMediaService
	no component
	action = BROADCAST_INTENT_NEW_MEDIA_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent71_1 extends Intent{}{
// com.instagram.android.receiver.C2DMReceiver: void onMessage(android.content.Context,android.content.Intent)
	sender = com_instagram_android_C2DMReceiver
	no component
	action = NOTIFICATION_RECEIVED_BROADCAST_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent72_1 extends Intent{}{
// com.instagram.android.activity.UrlHandlerActivity: void onBackPressed()
	sender = com_instagram_android_UrlHandlerActivity
	no component
	action = broadcastStopLegacyVideo_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent73_1 extends Intent{}{
// com.instagram.android.activity.MainTabActivity$9: void onClick(android.view.View)
	sender = com_instagram_android_MainTabActivity
	no component
	action = BROADCAST_SWITCH_TO_INBOX_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent74_1 extends Intent{}{
// com.instagram.android.activity.MainTabActivity$5: void onClick(android.view.View)
	sender = com_instagram_android_MainTabActivity
	no component
	action = BROADCAST_SWITCH_TO_INBOX_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent75_1 extends Intent{}{
// com.instagram.android.maps.PhotoMapsActivity: void onBackPressed()
	sender = com_instagram_android_PhotoMapsActivity
	no component
	action = BROADCAST_PHOTOMAPS_BACK_PRESSED_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent76_1 extends Intent{}{
// com.instagram.android.maps.DedicatedMapActivity: void onBackPressed()
	sender = com_instagram_android_DedicatedMapActivity
	no component
	action = BROADCAST_PHOTOMAPS_BACK_PRESSED_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent77_1 extends Intent{}{
// com.instagram.android.activity.NewsActivityInTab: void onPostResume()
	sender = com_instagram_android_NewsActivityInTab
	no component
	action = NOTIFICATION_RECEIVED_BROADCAST_PROXY_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent78_1 extends Intent{}{
// com.instagram.android.activity.MainTabActivity: void popToRoot(com.instagram.android.activity.MainTabActivity$Tab)
	sender = com_instagram_android_MainTabActivity
	no component
	action = BROADCAST_POP_TO_ROOT_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent79_1 extends Intent{}{
// com.instagram.android.activity.MainTabActivity: void onResume()
	sender = com_instagram_android_MainTabActivity
	no component
	action = BROADCAST_REFRESH_MAIN_FEED_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent80_1 extends Intent{}{
// com.instagram.android.activity.ActivityInTab: void onBackPressed()
	sender = com_instagram_android_ActivityInTab
	no component
	action = BROADCAST_BACK_PUSHED_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent81_1 extends Intent{}{
// com.instagram.android.maps.PhotoMapsActivity$6: void onClick(android.view.View)
	sender = com_instagram_android_PhotoMapsActivity
	no component
	action = action_bar_back_clicked_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent82_1 extends Intent{}{
// com.kiloo.subwaysurf.BillingService: boolean bindToMarketBillingService()
	sender = com_kiloo_subwaysurf_BillingService
	no component
	action = BIND_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent83_1 extends Intent{}{
// com.playdom.marvelavengers.MarvelAvengers: void gotoAppPage()
	sender = com_playdom_marvelavengers_MarvelAvengers
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent84_1 extends Intent{}{
// com.playdom.marvelavengers.MarvelAvengers: void openUri(java.lang.String)
	sender = com_playdom_marvelavengers_MarvelAvengers
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent85_1 extends Intent{}{
// com.mobilityware.solitaire.Preferences$24: boolean onPreferenceClick(android.preference.Preference)
	sender = com_mobilityware_solitaire_Preferences
	no component
	action = SENDTO_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent86_1 extends Intent{}{
// com.mobilityware.solitaire.Preferences$18: boolean onPreferenceClick(android.preference.Preference)
	sender = com_mobilityware_solitaire_Preferences
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent87_1 extends Intent{}{
// com.mobilityware.solitaire.Preferences$19: boolean onPreferenceClick(android.preference.Preference)
	sender = com_mobilityware_solitaire_Preferences
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent88_1 extends Intent{}{
// com.mobilityware.solitaire.Preferences$25: boolean onPreferenceClick(android.preference.Preference)
	sender = com_mobilityware_solitaire_Preferences
	no component
	action = SEND_A
	no categories
	extra = No
	data = YesMimeNoScheme
}



one sig intent89_1 extends Intent{}{
// com.mobilityware.solitaire.Preferences: void getImage(int,int,int)
	sender = com_mobilityware_solitaire_Preferences
	no component
	action = PICK_A
	no categories
	extra = No
	data = YesMimeYesScheme
}



one sig intent90_1 extends Intent{}{
// com.mobilityware.solitaire.Solitaire: void internalAdAction(android.view.View)
	sender = com_mobilityware_solitaire_Solitaire
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent91_1 extends Intent{}{
// com.mobilityware.solitaire.Solitaire: void tellFriends(android.view.View)
	sender = com_mobilityware_solitaire_Solitaire
	no component
	action = SEND_A
	no categories
	extra = No
	data = YesMimeNoScheme
}



one sig intent92_1 extends Intent{}{
// com.mobilityware.solitaire.Solitaire: void testPlayStorePresent()
	sender = com_mobilityware_solitaire_Solitaire
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent93_1 extends Intent{}{
// com.netflix.mediaclient.android.activity.SettingsActivity$3: boolean onPreferenceClick(android.preference.Preference)
	sender = com_netflix_mediaclient_SettingsActivity
	no component
	action = PUSH_NOTIFICATION_OPTOUT_A
	categories = PUSH_C
	extra = No
	data = NoMimeNoScheme
}



one sig intent94_1 extends Intent{}{
// com.netflix.mediaclient.ui.login.LoginActivity$3: void onClick(android.view.View)
	sender = com_netflix_mediaclient_LoginActivity
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent95_1 extends Intent{}{
// com.netflix.mediaclient.social.FacebookLoginActivity: void sendHomeRefreshBrodcast()
	sender = com_netflix_mediaclient_FacebookLoginActivity
	no component
	action = REFRESH_HOME_LOLOMO_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent96_1 extends Intent{}{
// com.netflix.mediaclient.ui.home.HomeActivity: void onAccept()
	sender = com_netflix_mediaclient_HomeActivity
	no component
	action = PUSH_NOTIFICATION_OPTIN_A
	categories = PUSH_C
	extra = No
	data = NoMimeNoScheme
}



one sig intent97_1 extends Intent{}{
// com.netflix.mediaclient.ui.home.HomeActivity: void onDecline()
	sender = com_netflix_mediaclient_HomeActivity
	no component
	action = PUSH_NOTIFICATION_OPTOUT_A
	categories = PUSH_C
	extra = No
	data = NoMimeNoScheme
}



one sig intent98_1 extends Intent{}{
// com.netflix.mediaclient.service.user.PartnerReceiver: void broadcastUserStatus(android.content.Context,boolean)
	sender = com_netflix_mediaclient_PartnerReceiver
	no component
	action = USER_STATUS_RESPONSE_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent99_1 extends Intent{}{
// com.netflix.mediaclient.android.activity.SettingsActivity: android.content.Intent createViewPrivacyPolicyIntent()
	sender = com_netflix_mediaclient_SettingsActivity
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



one sig intent100_1 extends Intent{}{
// com.netflix.mediaclient.ui.mdx.MdxPlaycardActivity: void notifyBrowseAgentToUpdateBookmark()
	sender = com_netflix_mediaclient_MdxPlaycardActivity
	no component
	action = PLAYER_PLAY_STOP_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent101_1 extends Intent{}{
// com.netflix.mediaclient.service.NetflixService: void initCompleted()
	sender = com_netflix_mediaclient_NetflixService
	no component
	action = NETFLIX_SERVICE_INIT_COMPLETE_A
	categories = NETFLIX_SERVICE_C
	extra = No
	data = NoMimeNoScheme
}



one sig intent102_1 extends Intent{}{
// com.netflix.mediaclient.service.NetflixService: void onDestroy()
	sender = com_netflix_mediaclient_NetflixService
	no component
	action = NETFLIX_SERVICE_DESTROYED_A
	categories = NETFLIX_SERVICE_C
	extra = No
	data = NoMimeNoScheme
}



one sig intent103_1 extends Intent{}{
// com.netflix.mediaclient.ui.player.PlayerActivity: void notifyOthersOfPlayStop()
	sender = com_netflix_mediaclient_PlayerActivity
	no component
	action = PLAYER_PLAY_STOP_A
	no categories
	extra = No
	data = NoMimeNoScheme
}



one sig intent104_1 extends Intent{}{
// com.netflix.mediaclient.ui.signup.SignupActivity$NFAndroidJS: void launchUrl(java.lang.String)
	sender = com_netflix_mediaclient_SignupActivity
	no component
	action = VIEW_A
	no categories
	extra = No
	data = NoMimeYesScheme
}



check vulnerableConnection

fact {
//#Application=34
//#Component=712
//#IntentFilter=204
//#Intent=104
#Data=4
}

pred show{}
run show
