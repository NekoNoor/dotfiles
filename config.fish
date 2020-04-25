# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    config.fish                                        :+:    :+:             #
#                                                      +:+                     #
#    By: nschat <nschat@student.codam.nl>             +#+                      #
#                                                    +#+                       #
#    Created: 2019/10/28 17:46:37 by nschat        #+#    #+#                  #
#    Updated: 2020/04/25 04:16:26 by lyzbian       ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

# dev alias
alias vim 'nvim'
alias vi 'nvim'
alias gitdiff 'git --no-pager diff --cached'
#alias norm 'git ls-files | rg ".[c,h]" | xargs colornorm'
#alias newbackup 'restic -r /Volumes/NoorUSB/.restic backup ~'

# set greeting
function fish_greeting
	 codam | lolcat
	 #0x2a -w nschat -p netwhat,42cursus-get_next_line,42cursus-ft_printf,cub3d,ft_server
end

# welcome message
function codam
	figlet -m 1 -w 150 -f big "$USER @ home"
	printf "Welcome to $hostname, $USER\n\n"
end

# start a tmux server
#tmux start-server
