# Support for emacsclient in aquamacs
if [ -d /Applications/Aquamacs.app/ ]
then
  EMACSCLIENT=/Applications/Aquamacs.app/Contents/MacOS/bin/emacsclient
  alias emacsclient=$EMACSCLIENT
  declare -x emacsclient
  export EDITOR=$EMACSCLIENT
fi
