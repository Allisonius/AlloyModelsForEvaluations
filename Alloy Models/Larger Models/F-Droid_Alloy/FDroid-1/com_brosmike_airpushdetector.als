open appDeclaration

one sig com_brosmike_airpushdetector extends Application{}{
	no usesPermissions
	no appPermissions
	no APIPermissions
}

one sig com_brosmike_airpushdetector_DetectorActivity extends Activity{}{
	app in com_brosmike_airpushdetector
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_brosmike_airpushdetector_ReportActivity extends Activity{}{
	app in com_brosmike_airpushdetector
	no intentFilter
	no compPermissions
	no compUsesPermissions
}


pred show(){
#Application=1
#Component=2
#IntentFilter=0
no Intent
#Data=4
}
run show
