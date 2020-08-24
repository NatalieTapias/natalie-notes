# Bash Custom Prompt
export PS1="\W 🌱  "

if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  GIT_PROMPT_ONLY_IN_REPO=1
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi
eval "$(rbenv init -)"

# set JAVA_HOME system environment variable value
export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home

# Add java bin folder in PATH system environment variable value.
export PATH=$PATH:$JAVA_HOME

# Recursive grep for Java source files only 
# usage: `grepj <search>`
function grepj {
  grep -r --include \*java $1 ./
}

# Copy a jar to gradle localcache 
# usage: `jarc <original jar> <localcache destination directory>`
function jarc {
  cp $1 ~/.gradle/localcache
}
