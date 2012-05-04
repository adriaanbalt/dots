#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # This loads RVM into a shell session.
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
[[ -s "/Users/BALT/.rvm/scripts/rvm" ]] && source "/Users/BALT/.rvm/scripts/rvm" 

parse_git_branch () {
   git branch 2>/dev/null|grep -e ^* | tr -d \*\;
}

get_rvm_info () {
   rvm-prompt v g 2> /dev/null
}

WHITE="\[\e[01;37m\]"
GREEN="\[\e[01;32m\]"

PS1="$WHITE\$(get_rvm_info)$GREEN\$(parse_git_branch)\[\e[00m\] \W: "

export PROMPT_COMMAND='echo -ne "\033]0;$PWD\007"'

c () {
   clear
}

status () {
   git status
}

add () {
   git add "$@"
}

commit () {
   git commit -a -m"$@"
}

pull () {
   git pull origin "$@"
}

push () {
   git push origin "$@"
}

export PATH=/opt/local/bin:/opt/local/sbin:/Users/BALT/PROJECTS/velveeta/frameworks/castellum/generator:/usr/local/git/bin/:$PATH