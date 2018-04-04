export TERM=xterm-256color
test -f ~/.git-completion.bash && . $_

# Prompt Functions
# ----------------

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

function prompt {
  local   BLUE='\e[0;34m'
  local   YELLOW='\e[1;33m'
  local   RED='\e[1;31m'  
  local   CHAR="♛"
  export PS1="\[\e]2;\u@\h\a[\[\e[37;44;1m\]\t\[\e[0m\]]$RED\$(parse_git_branch) \[\e[32m\]\W\[\e[0m\]\n\[\e[0;31m\]$RED$CHAR wzrd \[\e[0m\]"
}

function init {
  prompt 
}

function nb(){
  git checkout -b $1
}

init

# Teleport Functions 
# ----------------- 
function desk {
 cd /Users/$USER/Desktop/$@ 
}

function se {
  cd /Users/$USER/Development/se/$@
}

function ob {
  vim ~/.bash_profile 
}

function vc {
  vim ~/.vimrc
}

function home {
  cd $HOME 
}

# Help Functions
# ---------------
function reload {
  source ~/.bash_profile
}

ruby_server() { 
  ruby -run -e httpd . -p $1
}

dev(){
  cd /Users/$USER/Development/$@
}

fp(){
  ps aux | grep $1
}

gi(){
    wget -O- -q https://www.gitignore.io/api/$1
}

catgrep(){
  cat $1 | grep $2
}

parseGitBranch(){
  git symbolic-ref --short -q HEAD
}

gforce(){
  branch=$(parseGitBranch)
  git push origin $branch --force
}

gpush(){
  branch=$(parseGitBranch)
  git push origin $branch
}

rs(){
  bundle exec rails s
}

rc(){
  bundle exec rails c
}

migrate(){
  rake db:migrate:up VERSION=$1
}
copy_table(){
  TABLES=$1 bundle exec rake se:copy_production
}

tabname() {
  if [ -z $TMUX ] ; then
    printf "\e]1;$@\a"
  else
   tmux rename-window $@
  fi
}

change_db_env() {
 cp ${DEV_PATH}db_envs/${1}-staging/database.yml config/database.yml
}

# Editor
export EDITOR=/usr/bin/vim
# Bash History 
export HISTCONTROL=ignoredups
export HISTSIZE=1000

# Case-Insensitive Auto Completion
bind "set completion-ignore-case on"
# Aliases 
alias bye="m lock"
# --------
# Git
# --------
alias gcl="git clone"
alias gst="git status"
alias gl="git pull"
alias gp="git push"
alias gd="git diff | mate"
alias gc="git commit -v"
alias gca="git commit -v -a"
alias gb="git branch"
alias gba="git branch -a"
alias gcam="git commit --amend"
alias gbb="git branch -b"
alias gcm="git checkout master"
alias grbm="git rebase master"
alias gco="git checkout"
alias matrix='LC_ALL=C tr -c "[:digit:]" " " < /dev/urandom | dd cbs=$COLUMNS conv=unblock | GREP_COLOR="1;32" grep --color "[^ ]"'
alias copy_prod="bundle exec rake se:copy_production"
alias rebuild_test_db="rake db:test:prepare"
alias seed_production="bundle exec rake se:seed_from_production"
alias sanitize_data="bundle exec rake se:sanitize_data"
alias be="bundle exec"
alias legacy-staging="ssh antoinc@app-100-legacy-staging.s--e.net"
alias se-east-1-staging="ssh antoinc@app-100-se-east-staging-staging-1.s--e.net"
alias se-east-2-staging="ssh antoinc@app-100-se-east-staging-staging-2.s--e.net"
alias nt="npm test"
alias ns="npm start"
alias ntwatch="npm run test:watch"
alias node-default="nvm use default"

DEV_PATH="/Users/$USER/Development/$@"
export NPM_TOKEN="b99c8e7d-0155-4269-bb52-40d26772ff3a"

if [ -f `brew --prefix`/etc/bash_completion ]; then
      . `brew --prefix`/etc/bash_completion 
fi

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
alias tbc="nc termbin.com 9999 | pbcopy"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
