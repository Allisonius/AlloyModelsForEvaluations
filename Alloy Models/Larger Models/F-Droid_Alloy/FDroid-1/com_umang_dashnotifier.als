open appDeclaration

one sig com_umang_dashnotifier extends Application{}{
	usesPermissions = WAKE_LOCK + CP_PERMISSION
	no appPermissions
	APIPermissions = WAKE_LOCK
}

one sig com_umang_dashnotifier_AppSelectActivity extends Activity{}{
	app in com_umang_dashnotifier
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_umang_dashnotifier_ClickIntentActivity extends Activity{}{
	app in com_umang_dashnotifier
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_umang_dashnotifier_DashNotificationListener extends Service{}{
	app in com_umang_dashnotifier
	intentFilter = IntentFilter2
	compPermissions = BIND_NOTIFICATION_LISTENER_SERVICE
	compUsesPermissions = WAKE_LOCK
}

one sig com_umang_dashnotifier_DashNotificationListenerAcc extends Service{}{
	app in com_umang_dashnotifier
	intentFilter = IntentFilter3
	compPermissions = BIND_ACCESSIBILITY_SERVICE
	compUsesPermissions = WAKE_LOCK
}

one sig com_umang_dashnotifier_DashNotifierExtension extends Service{}{
	app in com_umang_dashnotifier
	intentFilter = IntentFilter4
	compPermissions = READ_EXTENSION_DATA
	no compUsesPermissions
}

one sig com_umang_dashnotifier_DashNotifierExtension10 extends Service{}{
	app in com_umang_dashnotifier
	intentFilter = IntentFilter4
	compPermissions = READ_EXTENSION_DATA
	no compUsesPermissions
}

one sig com_umang_dashnotifier_DashNotifierExtension11 extends Service{}{
	app in com_umang_dashnotifier
	intentFilter = IntentFilter4
	compPermissions = READ_EXTENSION_DATA
	no compUsesPermissions
}

one sig com_umang_dashnotifier_DashNotifierExtension2 extends Service{}{
	app in com_umang_dashnotifier
	intentFilter = IntentFilter4
	compPermissions = READ_EXTENSION_DATA
	no compUsesPermissions
}

one sig com_umang_dashnotifier_DashNotifierExtension3 extends Service{}{
	app in com_umang_dashnotifier
	intentFilter = IntentFilter4
	compPermissions = READ_EXTENSION_DATA
	no compUsesPermissions
}

one sig com_umang_dashnotifier_DashNotifierExtension4 extends Service{}{
	app in com_umang_dashnotifier
	intentFilter = IntentFilter4
	compPermissions = READ_EXTENSION_DATA
	no compUsesPermissions
}

one sig com_umang_dashnotifier_DashNotifierExtension5 extends Service{}{
	app in com_umang_dashnotifier
	intentFilter = IntentFilter4
	compPermissions = READ_EXTENSION_DATA
	no compUsesPermissions
}

one sig com_umang_dashnotifier_DashNotifierExtension6 extends Service{}{
	app in com_umang_dashnotifier
	intentFilter = IntentFilter4
	compPermissions = READ_EXTENSION_DATA
	no compUsesPermissions
}

one sig com_umang_dashnotifier_DashNotifierExtension7 extends Service{}{
	app in com_umang_dashnotifier
	intentFilter = IntentFilter4
	compPermissions = READ_EXTENSION_DATA
	no compUsesPermissions
}

one sig com_umang_dashnotifier_DashNotifierExtension8 extends Service{}{
	app in com_umang_dashnotifier
	intentFilter = IntentFilter4
	compPermissions = READ_EXTENSION_DATA
	no compUsesPermissions
}

one sig com_umang_dashnotifier_DashNotifierExtension9 extends Service{}{
	app in com_umang_dashnotifier
	intentFilter = IntentFilter4
	compPermissions = READ_EXTENSION_DATA
	no compUsesPermissions
}

one sig com_umang_dashnotifier_DashNotifierSettingsActivity extends Activity{}{
	app in com_umang_dashnotifier
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_umang_dashnotifier_DashNotifierSettingsActivity10 extends Activity{}{
	app in com_umang_dashnotifier
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_umang_dashnotifier_DashNotifierSettingsActivity11 extends Activity{}{
	app in com_umang_dashnotifier
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_umang_dashnotifier_DashNotifierSettingsActivity2 extends Activity{}{
	app in com_umang_dashnotifier
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_umang_dashnotifier_DashNotifierSettingsActivity3 extends Activity{}{
	app in com_umang_dashnotifier
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_umang_dashnotifier_DashNotifierSettingsActivity4 extends Activity{}{
	app in com_umang_dashnotifier
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_umang_dashnotifier_DashNotifierSettingsActivity5 extends Activity{}{
	app in com_umang_dashnotifier
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_umang_dashnotifier_DashNotifierSettingsActivity6 extends Activity{}{
	app in com_umang_dashnotifier
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_umang_dashnotifier_DashNotifierSettingsActivity7 extends Activity{}{
	app in com_umang_dashnotifier
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_umang_dashnotifier_DashNotifierSettingsActivity8 extends Activity{}{
	app in com_umang_dashnotifier
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_umang_dashnotifier_DashNotifierSettingsActivity9 extends Activity{}{
	app in com_umang_dashnotifier
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_umang_dashnotifier_UnlockReceiver extends Receiver{}{
	app in com_umang_dashnotifier
	intentFilter = IntentFilter5
	no compPermissions
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = ClickIntent_A
	categories = DEFAULT_C
	no data
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = NotificationListenerService_A
	no categories
	no data
}

one sig IntentFilter3 extends IntentFilter{}{
	actions = AccessibilityService_A
	no categories
	no data
}

one sig IntentFilter4 extends IntentFilter{}{
	actions = Extension_A
	no categories
	no data
}

one sig IntentFilter5 extends IntentFilter{}{
	actions = USER_PRESENT_A
	no categories
	no data
}


pred show(){
#Application=1
//#Component=27
#IntentFilter=5
no Intent
#Data=4
}
run show
