if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

##
# Your previous /Users/adriaan.scholvinck/.bash_profile file was backed up as /Users/adriaan.scholvinck/.bash_profile.macports-saved_2012-08-22_at_14:09:53
##

# MacPorts Installer addition on 2012-08-22_at_14:09:53: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
