# Warden Aliases
[Warden](https://warden.dev/) is a CLI utility for orchestrating Docker based developer environments.

These aliases make your warden based development life easier (how?, see below).

## Installation
Copy the content of file (https://raw.githubusercontent.com/MagePsycho/magento2-warden-aliases/master/src/m2-warden-aliases.sh to your `~/.bash_profile`

Or you can directly copy as
```
wget -O - https://raw.githubusercontent.com/MagePsycho/magento2-warden-aliases/master/src/m2-warden-aliases.sh >> ~/.bash_profile
```
*Note: Make sure to run this command only once, otherwise it will append the same code again and again*

After adding the aliases to the `bash_profile`, you need to reload it
```
source ~/.bash_profile
```

*If you are using other than `bash` shell, like `zsh`, you can use the similar approach.*

## Aliases
With aliases, you don't need to write full `warden` command.

| Category            | Warden Command                                        | Alias Command                       |
|---------------------|-------------------------------------------------------|-------------------------------------|
| Magento 2           | `warden shell -c "bin/magento <action>"`              | `wm2 <action>`                      |
| MageRun             | `warden shell -c "n98-magerun <action>"`              | `wmr <action>`                      |
| Redis               | `warden redis <action>`                               | `wrd <action>`                      |
| Database            | `warden db <action>`                                  | `wdb <action>`                      |
| Logs                | `warden env logs --tail 0 -f nginx php-fpm php-debug` | `wlg`                               |
| Shell (`php-fpm`)   | `warden shell`                                        | `wsh`                               |
| Shell (`php-debug`) | `warden debug`                                        | `wdg`                               |
| Global Services     | `warden svc <action>`                                 | `wsvc <action>`                     |
| Global Services     | `warden svc up`                                       | `wsup`                              |
| Global Services     | `warden svc stop`                                     | `wsst`                              |
| Environment         | `warden env <action>`                                 | `wenv <action>`                     |
| Environment         | `warden env up`                                       | `wup`                               |
| Environment         | `warden env stop`                                     | `wst`                               |
| Environment Init    | `warden env-init <project> <environment_type> && warden sign-certificate <project>.test`  | `winit <project> <environment_type>`|
