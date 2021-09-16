wardenDebug() {
	warden debug
}
alias wdb="wardenDebug"

wardenShell() {
	warden shell $1
}
alias wsh="wardenShell"

wardenShellM2() {
	warden shell -c "bin/magento $1"
}
alias wm2="wardenShellM2"

wardenShellMageRun() {
	warden shell -c "n98-magerun $1"
}
alias wmr="wardenShellMageRun"

wardenRedis() {
	warden redis $1
}
alias wrd="wardenRedis"

wardenDb() {
	warden db $1
}
alias wdb="wardenDb"

wardenLogs() {
	warden env logs --tail 0 -f nginx php-fpm php-debug
}
alias wlg="wardenLogs"

wardenEnv() {
	warden env $1
}
alias wenv="wardenEnv"
