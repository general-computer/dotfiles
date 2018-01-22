export PS1="\W$ "

export EDITOR="vi"
export HISTTIMEFORMAT="%F %T "
alias k='cd ~/knapsack'
alias h='git push heroku master'
alias poosh="git push"
alias be="bundle exec"
alias bi="bundle install"
. ~/.nvm/nvm.sh
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

alias grb='git rebase -p'
alias gup='git fetch origin && grb origin/$(git_current_branch)'

alias gl='git log --graph --oneline --all --abbrev-commit --decorate'
alias go='git checkout'
HISTFILE="${HOME}/.history/$(date -u +%Y/%m/%d.%H.%M.%S)_${HOSTNAME_SHORT}_$$"

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working directory clean" ]] && echo "*" 
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(parse_git_dirty))/"
}
export PS1='\[\033[1;33m\]\w\[\033[0m\]$(parse_git_branch)$ '

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

alias startnginx="sudo /opt/nginx/sbin/nginx"
alias stopnginx="sudo /opt/nginx/sbin/nginx -s stop"
alias reloadnginx="sudo /opt/nginx/sbin/nginx -s reload"
