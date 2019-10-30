# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    config.fish                                        :+:    :+:             #
#                                                      +:+                     #
#    By: nschat <nschat@student.codam.nl>             +#+                      #
#                                                    +#+                       #
#    Created: 2019/10/28 17:46:37 by nschat        #+#    #+#                  #
#    Updated: 2019/10/30 15:45:57 by nschat        ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

# dev alias
alias vim 'nvim'
alias vi 'nvim'
alias gitdiff 'git --no-pager diff --cached'
alias listempty 'rg -l -U "\{\n\}|\(void\)"'
alias norm 'find . -name "*.[c,h]" | xargs norminette'

# unicorn greeting
function fish_greeting
	codam | lolcat
end

# welcome message
function codam
	figlet -m 1 -w 150 -f big "$USER @ codam"
	printf "Welcome to $hostname, $USER\n\n"
end
