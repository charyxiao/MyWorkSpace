# 常用命令
alias cp='cp -i'
alias mv='mv -i'
alias grep='/bin/grep --color'
alias ls='ls --color'
alias ll='ls -lF'

# 工具类
kitspath=${HOME}/kits
alias ts="${kitspath}/ts"
alias st="${kitspath}/st"
alias bkb="${kitspath}/bkb"
alias toftp="${kitspath}/toftp"

# docker命令
alias sug='docker exec -it sug /bin/su -'
alias sgbuilder='docker exec -it sgbuilder /bin/su -'
#/usr/bin/ssh -o ProxyCommand='/usr/bin/ssh -W %h:%p -p 2020 -o ProxyCommand="corkscrew 127.0.0.1 12639 jump.sec.sogou 2020" txdongxiao@jump.sec.sogou' root@10.164.33.227
