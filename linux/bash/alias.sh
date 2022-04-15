# 常用命令j
alias cp='cp -i'
alias mv='mv -i'
alias grep='/bin/grep --color'
alias ls='ls --color'
alias ll='ls -lF'
alias cctags='ctags -R --c++-kinds=+px --fields=+iaS --extra=+q'
alias ccscope='cscope -Rbkq'
alias gst='git status'

# 工具类
kitspath=${HOME}/kits
alias ts="${kitspath}/ts"
alias st="${kitspath}/st"
alias bkb="${kitspath}/bkb"
alias toftp="${kitspath}/toftp"
alias dtools="${kitspath}/dtools"
alias cvm="expect ${kitspath}/cvmlogin"

# docker
alias sug='docker exec -it sug /bin/su -'
alias trpc-go='docker exec -it trpc-go /sbin/init -'
