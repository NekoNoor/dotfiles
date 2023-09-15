if status is-interactive
	# Commands to run in interactive sessions can go here
	# start tmux if it's not already running
	#if test -z $TMUX
	#	tmux; exit
	#end

	# run starship prompt
	#starship init fish | source
	#zoxide init fish | source

	# unlimited pwd dir length
	#set -g fish_prompt_pwd_dir_length 0
end

# dev alias
alias vim 'nvim'
alias vi 'nvim'
alias gitdiff 'git --no-pager diff --cached'

# set greeting
function fish_greeting
	greet # | lolcat
	set_color brcyan; echo -n time since starting hrt; set_color normal; echo :
	set_color blue; echo (math -s0 (math (date +%s) - 1576018800) / 86400) days
end

# welcome message
function greet
	figlet -w (tput cols) -f big "$USER @ $hostname"
	printf "Welcome to $hostname, $USER\n\n"
end
