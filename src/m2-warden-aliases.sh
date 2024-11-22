################################################################################
# Warden Aliases
# @website: https://www.magepsycho.com
# @author: Raj KB <magepsycho@gmail.com>
################################################################################
# Create and start services
wardenSvcUp() {
	warden svc up
}
alias wsup="wardenSvcUp"

# Stop svc services
wardenSvcStop() {
	warden svc stop
}
alias wsst="wardenSvcStop"

# Create and start containers
wardenEnvUp() {
	warden env up
}
alias wup="wardenEnvUp"

# Stop services
wardenEnvStop() {
	warden env stop
}
alias wst="wardenEnvStop"

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

# Executes svc related commands
wardenSvc() {
	warden svc $1
}
alias wsvc="wardenSvc"

# Executes environment related commands
wardenEnv() {
	warden env $1
}
alias wenv="wardenEnv"

################################################################################
