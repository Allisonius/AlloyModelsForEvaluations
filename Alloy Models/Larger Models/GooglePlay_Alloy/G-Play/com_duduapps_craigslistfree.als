open appDeclaration

one sig com_duduapps_craigslistfree extends Application{}{
	usesPermissions = INTERNET + ACCESS_NETWORK_STATE + CALL_PHONE + READ_PHONE_STATE + CAMERA + WRITE_EXTERNAL_STORAGE
	no appPermissions
	no APIPermissions
}

one sig com_duduapps_craigslistfree_AdActivity extends Activity{}{
	app in com_duduapps_craigslistfree
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_duduapps_craigslistfree_BrowserActivity extends Activity{}{
	app in com_duduapps_craigslistfree
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_duduapps_craigslistfree_CategoryActivity extends Activity{}{
	app in com_duduapps_craigslistfree
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_duduapps_craigslistfree_CityActivity extends Activity{}{
	app in com_duduapps_craigslistfree
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_duduapps_craigslistfree_CraigslistStartup extends Activity{}{
	app in com_duduapps_craigslistfree
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_duduapps_craigslistfree_ItemActivity extends Activity{}{
	app in com_duduapps_craigslistfree
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_duduapps_craigslistfree_ItemListActivity extends Activity{}{
	app in com_duduapps_craigslistfree
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_duduapps_craigslistfree_LocationActivity extends Activity{}{
	app in com_duduapps_craigslistfree
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_duduapps_craigslistfree_LoginActivity extends Activity{}{
	app in com_duduapps_craigslistfree
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_duduapps_craigslistfree_MMAdViewOverlayActivity extends Activity{}{
	app in com_duduapps_craigslistfree
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_duduapps_craigslistfree_PostComposeActivity extends Activity{}{
	app in com_duduapps_craigslistfree
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_duduapps_craigslistfree_PostSelectionActivity extends Activity{}{
	app in com_duduapps_craigslistfree
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_duduapps_craigslistfree_SearchActivity extends Activity{}{
	app in com_duduapps_craigslistfree
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_duduapps_craigslistfree_SearchSettingActivity extends Activity{}{
	app in com_duduapps_craigslistfree
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_duduapps_craigslistfree_StateActivity extends Activity{}{
	app in com_duduapps_craigslistfree
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_duduapps_craigslistfree_VerificationActivity extends Activity{}{
	app in com_duduapps_craigslistfree
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_duduapps_craigslistfree_VideoPlayer extends Activity{}{
	app in com_duduapps_craigslistfree
	no intentFilter
	no compPermissions
	no compUsesPermissions
}


pred show(){
#Application=1
//#Component=17
#IntentFilter=0
no Intent
#Data=4
}
run show
