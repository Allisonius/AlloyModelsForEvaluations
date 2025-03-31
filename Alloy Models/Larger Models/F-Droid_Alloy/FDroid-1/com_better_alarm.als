open appDeclaration

one sig com_better_alarm extends Application{}{
	usesPermissions = RECEIVE_BOOT_COMPLETED + WAKE_LOCK + VIBRATE + WRITE_SETTINGS + DISABLE_KEYGUARD + READ_PHONE_STATE + INTERNET + READ_EXTERNAL_STORAGE
	no appPermissions
	APIPermissions = WAKE_LOCK + VIBRATE + WRITE_SETTINGS + READ_PHONE_STATE
}

one sig com_better_alarm_AlarmAlert extends Activity{}{
	app in com_better_alarm
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_better_alarm_AlarmAlertFullScreen extends Activity{}{
	app in com_better_alarm
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_better_alarm_AlarmAlertReceiver extends Receiver{}{
	app in com_better_alarm
	intentFilter = IntentFilter1
	no compPermissions
	compUsesPermissions = VIBRATE
}

one sig com_better_alarm_AlarmDetailsActivity extends Activity{}{
	app in com_better_alarm
	no intentFilter
	no compPermissions
	compUsesPermissions = WAKE_LOCK
}

one sig com_better_alarm_AlarmsListActivity extends Activity{}{
	app in com_better_alarm
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_better_alarm_AlarmsService extends Receiver{}{
	app in com_better_alarm
	intentFilter = IntentFilter2
	no compPermissions
	no compUsesPermissions
}

one sig com_better_alarm_DataBaseService extends Service{}{
	app in com_better_alarm
	intentFilter = IntentFilter3
	no compPermissions
	no compUsesPermissions
}

one sig com_better_alarm_KlaxonService extends Receiver{}{
	app in com_better_alarm
	intentFilter = IntentFilter4
	no compPermissions
	no compUsesPermissions
}

one sig com_better_alarm_ScheduledReceiver extends Receiver{}{
	app in com_better_alarm
	intentFilter = IntentFilter5
	no compPermissions
	no compUsesPermissions
}

one sig com_better_alarm_SettingsActivity extends Activity{}{
	app in com_better_alarm
	intentFilter = IntentFilter6
	no compPermissions
	compUsesPermissions = WAKE_LOCK
}

one sig com_better_alarm_ToastPresenter extends Receiver{}{
	app in com_better_alarm
	intentFilter = IntentFilter7
	no compPermissions
	no compUsesPermissions
}

one sig com_better_alarm_VibrationService extends Receiver{}{
	app in com_better_alarm
	intentFilter = IntentFilter8
	no compPermissions
	compUsesPermissions = VIBRATE
}

one sig IntentFilter1 extends IntentFilter{}{
	actions = ACTION_CANCEL_SNOOZE_A + ACTION_SOUND_EXPIRED_A + ALARM_ALERT_A + ALARM_DISMISS_A + ALARM_PREALARM_ACTION_A + ALARM_SNOOZE_A
	no categories
	no data
}

one sig IntentFilter2 extends IntentFilter{}{
	actions = ACTION_FIRED_A + ACTION_SNOOZED_FIRED_A + ACTION_SOUND_EXPIRED_A + BOOT_COMPLETED_A + LOCALE_CHANGED_A + TIMEZONE_CHANGED_A + TIME_SET_A
	no categories
	no data
}

one sig IntentFilter3 extends IntentFilter{}{
	actions = ACTION_SAVE_ALARM_A
	no categories
	no data
}

one sig IntentFilter4 extends IntentFilter{}{
	actions = ACTION_DEMUTE_A + ACTION_MUTE_A + ACTION_SOUND_EXPIRED_A + ACTION_START_ALARM_SAMPLE_A + ACTION_START_PREALARM_SAMPLE_A + ACTION_STOP_ALARM_SAMPLE_A + ACTION_STOP_PREALARM_SAMPLE_A + ALARM_ALERT_A + ALARM_DISMISS_A + ALARM_PREALARM_ACTION_A + ALARM_SNOOZE_A
	no categories
	no data
}

one sig IntentFilter5 extends IntentFilter{}{
	actions = ACTION_ALARMS_UNSCHEDULED_A + ACTION_ALARM_SCHEDULED_A
	no categories
	no data
}

one sig IntentFilter6 extends IntentFilter{}{
	actions = MAIN_A
	no categories
	no data
}

one sig IntentFilter7 extends IntentFilter{}{
	actions = ACTION_ALARM_SET_A
	no categories
	no data
}

one sig IntentFilter8 extends IntentFilter{}{
	actions = ACTION_DEMUTE_A + ACTION_MUTE_A + ACTION_SOUND_EXPIRED_A + ALARM_ALERT_A + ALARM_DISMISS_A + ALARM_SNOOZE_A
	no categories
	no data
}


pred show(){
#Application=1
//#Component=12
//#IntentFilter=8
no Intent
#Data=4
}
run show
