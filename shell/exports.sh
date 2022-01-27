export CLICOLOR=1
export EDITOR="vim"
export IGNOREEOF=1
export FZF_DEFAULT_COMMAND=' (git ls-tree -r --name-only HEAD || find . -path "*/\.*" -prune -o -type f -print -o -type l -print | sed s/^..//) 2> /dev/null'

# add more paths separated with :
# export PATH="$PATH"
export GOPATH=$(go env GOPATH)
export PATH="/Users/jonjon/lib/flutter/bin:/Users/jonjon/lib/google-cloud-sdk/bin:$(go env GOPATH)/bin:/usr/local/sbin:$PATH"
# export NODE_GYP_FORCE_PYTHON="/usr/local/bin/python2"
export NODE_GYP_FORCE_PYTHON="/usr/bin/python"
export BASH_SILENCE_DEPRECATION_WARNING=1
# export PYTHON="/usr/bin/python"

export ANDROID_HOME=/Users/jonjon/Library/Android/sdk
export ANDROID_SDK_ROOT=/Users/jonjon/Library/Android/sdk
export ANDROID_AVD_HOME=/Users/jonjon/.android/avd

export GOOGLE_APPLICATION_CREDENTIALS="/Users/jonjon/work/onitech/apps/next-example/firebase-admin/onitech-17c8d-firebase-adminsdk-2uljs-e474cab6d6.json"
