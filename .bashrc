#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1='[\u@\h \W]\$ '
PS1='[\u@\h:\w]\$ '

# ls
alias l='ls'
alias ls='ls -h --color=auto'
alias ll='ls -l'
alias lf='ls -CF'
alias lx='ls -lxB'
alias lk='ls -lSr'
alias la='ls -A'
alias lt='ls -ltr'

alias grep='grep --color=auto'

alias p='sudo pacman '
alias yup='sudo yaourt -Syu --aur'
alias y='sudo yaourt '
alias goagent='python2 ~/program/goagent/local/proxy.py'
alias pyback='nohup ~/program/goagent/local/proxy.py &> /dev/null'
alias geminstall='sudo gem install --http-proxy http://127.0.0.1:8087 -V '
alias e='emacsclient -t -a ""'
alias ec='emacsclient -c -a ""'
alias se='sudo emacs'
alias vnc='x11vnc -forever -bg -shared -localhost -display :0 -rfbauth ~/.x11vnc/passwd'
alias nmap='sudo nmap'
alias iotop='sudo iotop'
alias lk='xlock -font "-bitstream-bitstream vera sans-bold-r-normal--*-120-*-*-*-*-*-*"'
alias xlock='xlock -font "-bitstream-bitstream vera sans-bold-r-normal--*-120-*-*-*-*-*-*"'
alias convutf8='enconv -L zh_CN -x UTF-8 '
alias telnet='luit -encoding gbk telnet '
alias nettop='sudo nethogs '
alias findtags='find . -name "*.[chCHS]" -print | etags -'
alias findcscope='find -type f | grep -E '\.[chS]$' > cscope.files'
alias vidcap='ffmpeg -f x11grab -s 1366*768 -r 90 -i :0.0 -sameq ~/recode.mp4'
alias startmon='sudo ~/.magic.sh'
alias qemu='qemu-system-x86_64'
alias startxp='kvm -m 512 -drive file=~/program/vm/xp/xp.img,cache=writeback -localtime -net nic,model=rtl8139,macaddr=52-54-00-00-08-01 -net vde -boot c -smp 2 -soundhw es1370'
alias vboxmod='sudo modprobe -a vboxdrv vboxnetadp vboxnetflt'
alias war3='env WINEPREFIX=~/.win32 wine ~/program/Warcraft3/War3.exe -opengl'
alias sg='env WINEPREFIX=~/.win32 wine ~/program/game/san12/10450459/San12PK.exe -opengl'
alias 8g='go tool 8g'
alias 8l='go tool 8l'
alias startssh='sudo systemctl start sshd.service'
alias steam='export LC_CTYPE="en_US.UTF-8" && steam'

# for less, and man page
alias less='less -N'
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'
export PAGER=less

# programming
alias ldpath='export LD_LIBRARY_PATH=./'
source /usr/share/git/completion/git-completion.bash
export GOPATH=~/.go
export PYTHONPATH=~/.py
#export SMLNJ_HOME=/usr/lib/smlnj
#export CM_PATH=/usr/lib/smlnj/lib

# common
export EDITOR='emacsclient -c -a ""'
export LC_CTYPE=zh_CN.UTF-8
export TERM=xterm-256color

PATH=$PATH:/usr/local/bin:$GOPATH/bin
