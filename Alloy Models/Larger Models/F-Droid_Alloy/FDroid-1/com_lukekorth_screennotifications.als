open appDeclaration

one sig com_lukekorth_screennotifications extends Application{}{
	usesPermissions = WAKE_LOCK + EXPAND_STATUS_BAR + READ_PHONE_STATE + BILLING + WRITE_SETTINGS
	no appPermissions
	APIPermissions = WAKE_LOCK + WRITE_SETTINGS
}

one sig com_lukekorth_screennotifications_AppsActivity extends Activity{}{
	app in com_lukekorth_screennotifications
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_lukekorth_screennotifications_BillingReceiver extends Receiver{}{
	app in com_lukekorth_screennotifications
	intentFilter = IntentFilter1
	no compPermissions
	no compUsesPermissions
}

one sig com_lukekorth_screennotifications_BillingService extends Service{}{
	app in com_lukekorth_screennotifications
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_lukekorth_screennotifications_DonationsActivity extends Activity{}{
	app in com_lukekorth_screennotifications
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_lukekorth_screennotifications_ScreenNotificationsActivity extends Activity{}{
	app in com_lukekorth_screennotifications
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_lukekorth_screennotifications_ScreenNotificationsService extends Service{}{
	app in com_lukekorth_screennotifications
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig com_lukekorth_screennotifications_ScreenNotificationsServiceJB extends Service{}{
	app in com_lukekorth_screennotifications
	intentFilter = IntentFilter2
	compPermissions = BIND_ACCESSIBILITY_SERVICE
	no compUsesPermissions
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = IN_APP_NOTIFY_A + PURCHASE_STATE_CHANGED_A + RESPONSE_CODE_A
	no categories
	no data
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = AccessibilityService_A
	no categories
	no data
}


pred show(){
#Application=1
#Component=7
#IntentFilter=2
no Intent
#Data=4
}
run show
