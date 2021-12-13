# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    config.fish                                        :+:    :+:             #
#                                                      +:+                     #
#    By: nschat <nschat@student.codam.nl>             +#+                      #
#                                                    +#+                       #
#    Created: 2019/10/28 17:46:37 by nschat        #+#    #+#                  #
#    Updated: 2021/12/09 13:56:56 by nschat        ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

# start tmux if it's not already running
#if test -z $TMUX
#	tmux; exit
#end

# dev alias
alias vim 'nvim'
alias vi 'nvim'
alias gitdiff 'git --no-pager diff --cached'
alias norm 'norminette'
alias cleanhome 'rm -rf ~/Library/**42_cache_bak**'

# set greeting
function fish_greeting
	codam | lolcat
	#0x2a -w nschat # -p netwhat,42cursus-get_next_line,42cursus-ft_printf,cub3d,ft_server
	set_color brcyan; echo -n time since starting hrt; set_color normal; echo :
	set_color blue; echo (math -s0 (math (date +%s) - 1576018800) / 86400) days
end

# welcome message
function codam
	toilet -d ~/.config/fish/figlet-fonts/ -f big "$USER @ codam"
	printf "Welcome to $hostname, $USER\n\n"
end

# run starship prompt
starship init fish | source
zoxide init fish | source
fish_add_path $BREW_PREFIX/opt/openjdk/bin
fish_add_path $BREW_PREFIX/opt/llvm/bin
fish_add_path $HOME/.cargo/bin
