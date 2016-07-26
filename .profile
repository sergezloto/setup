# Support for emacsclient in aquamacs
if [ -d /Applications/Aquamacs.app/ ]
then
  EMACSCLIENT=/Applications/Aquamacs.app/Contents/MacOS/bin/emacsclient
  alias -x emacsclient=$EMACSCLIENT
  export EDITOR=$EMACSCLIENT
fi
