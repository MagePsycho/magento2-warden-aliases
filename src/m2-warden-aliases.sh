################################################################################
# Warden Aliases
# @website: https://www.magepsycho.com
# @author: Raj KB <magepsycho@gmail.com>
################################################################################

# Connects to `php-debug` container shell
wardenDebug() {
	warden debug
}
alias wdg="wardenDebug"

# Connects to `php-fpm` container shell
wardenShell() {
	warden shell $1
}
alias wsh="wardenShell"

# Executes M2 commands on `php-fpm` container shell
wardenShellM2() {
	warden shell -c "bin/magento $1"
}
alias wm2="wardenShellM2"

# Executes MageRun commands on `php-fpm` container shell
wardenShellMageRun() {
	warden shell -c "n98-magerun $1"
}
alias wmr="wardenShellMageRun"

# Executes Redis commands
wardenRedis() {
	warden redis $1
}
alias wrd="wardenRedis"

# Executes DB related commands
wardenDb() {
	warden db $1
}
alias wdb="wardenDb"

# Tail logs from different containers
wardenLogs() {
	warden env logs --tail 0 -f nginx php-fpm php-debug
}
alias wlg="wardenLogs"

# Executes environment related commands
wardenEnv() {
	warden env $1
}
alias wenv="wardenEnv"

################################################################################
