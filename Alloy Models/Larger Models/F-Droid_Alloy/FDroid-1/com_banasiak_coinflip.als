open appDeclaration

one sig com_banasiak_coinflip extends Application{}{
	usesPermissions = VIBRATE
	no appPermissions
	APIPermissions = VIBRATE
}

one sig com_banasiak_coinflip_About extends Activity{}{
	app in com_banasiak_coinflip
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_banasiak_coinflip_CoinFlip extends Activity{}{
	app in com_banasiak_coinflip
	no intentFilter
	no compPermissions
	compUsesPermissions = VIBRATE
}

one sig com_banasiak_coinflip_SelfTest extends Activity{}{
	app in com_banasiak_coinflip
	no intentFilter
	no compPermissions
	no compUsesPermissions
}

one sig com_banasiak_coinflip_Settings extends Activity{}{
	app in com_banasiak_coinflip
	no intentFilter
	no compPermissions
	no compUsesPermissions
}


pred show(){
#Application=1
#Component=4
#IntentFilter=0
no Intent
#Data=4
}
run show
