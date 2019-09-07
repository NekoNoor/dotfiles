# non vim mode
fish_default_key_bindings

# set mail for stdheader
set MAIL nekonoor@protonmail.com

# alias
alias reinx '~/Scripts/reinx.fish'
alias hekate '~/Scripts/hekate.fish'
alias tinfoil 'sudo python3 /media/hdd1/SwitchHacks/OldGoldleaf/OldTinfoil/tools/usb_install_pc.py ~/Downloads/nsp'
alias swap '~/Scripts/swap.fish'
alias range360 'sudo ~/Scripts/360range.fish'
alias range540 'sudo ~/Scripts/540range.fish'
alias range900 'sudo ~/Scripts/900range.fish'
alias g27mode 'sudo ~/Scripts/g27mode.fish'
alias g29mode 'sudo ~/Scripts/g29mode.fish'
alias combinepedals 'sudo ~/Scripts/combinepedals.fish'
alias uncombinepedals 'sudo ~/Scripts/uncombinepedals.fish'
alias checkmode '~/Scripts/checkmode.fish'
alias endsteam '~/Scripts/endsteam.fish'
alias wheelrange '~/Scripts/wheelrange.fish'

# dev alias
alias gitdiff 'git --no-pager diff master'
alias vim 'nvim'
alias vi 'nvim'
alias diff 'diff --color'

# coloured manpages
#set -gx LESS_TERMCAP_mb \e'[1;32m'
#set -gx LESS_TERMCAP_md \e'[1;32m'
#set -gx LESS_TERMCAP_me \e'[0m'
#set -gx LESS_TERMCAP_se \e'[0m'
#set -gx LESS_TERMCAP_so \e'[01;33m'
#set -gx LESS_TERMCAP_ue \e'[0m'
#set -gx LESS_TERMCAP_us \e'[1;4;31m'

# editor command for git
#git config --global core.editor "nvim -c 'vsplit term://gitdiff | wincmd h'"

# unicorn greeting
function fish_greeting
	cowsay -f unicorn Welcome to $hostname, $USER | lolcat
end

# functions
function goldtree
    sudo python3 /home/nekonoor/Scripts/data/GoldtreePy/Goldtree.py $argv
end

function fusee
    ~/Scripts/fusee.fish (realpath $argv)
end
