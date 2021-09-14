wardenShellMageRun() {
	warden shell -c "n98-magerun $1"
}
alias wmr="wardenShellMageRun"

wardenShellM2() {
	warden shell -c "bin/magento $1"
}
alias wm="wardenShellM2"

wardenRedis() {
	warden redis $1
}
alias wr="wardenRedis"

wardenDb() {
	warden db $1
}
alias wd="wardenDb"

wardenLogs() {
	warden env logs --tail 0 -f nginx php-fpm php-debug
}
alias wl="wardenLogs"
