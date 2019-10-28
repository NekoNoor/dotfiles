# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    config.fish                                        :+:    :+:             #
#                                                      +:+                     #
#    By: nschat <nschat@student.codam.nl>             +#+                      #
#                                                    +#+                       #
#    Created: 2019/10/28 17:46:37 by nschat        #+#    #+#                  #
#    Updated: 2019/10/28 17:46:42 by nschat        ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

# dev alias
alias gitdiff 'git --no-pager diff master'
alias vim 'nvim'
alias vi 'nvim'
alias diff 'diff --color'
alias gitdiff 'git --no-pager diff --cached'

# unicorn greeting
function fish_greeting
	cowsay -f unicorn Welcome to $hostname, $USER | lolcat
end