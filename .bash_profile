#eval `ssh-agent`
source ~/.bashrc  #get aliases
export PATH=$PATH:/usr/local/sbin


export PROMPT_COMMAND='echo -ne "\033]0;YOUR NAME HERE\007"'
complete -C '/Users/eddy/.virtualenvs/science/bin/aws_completer' aws

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
#export PATH

export PYTHONIOENCODING=utf8

export LDFLAGS="-L/usr/local/opt/mysql-client/lib"
export CPPFLAGS="-I/usr/local/opt/mysql-client/include"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/edwarddin/dev/google-cloud-sdk/path.bash.inc' ]; then . '/Users/edwarddin/dev/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/edwarddin/dev/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/edwarddin/dev/google-cloud-sdk/completion.bash.inc'; fi


# PYENV stuff
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
eval "pyenv virtualenvwrapper"
export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"
