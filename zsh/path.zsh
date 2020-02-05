### Basic path
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/bin

### Heroku Toolbelt
export PATH=/usr/local/heroku/bin:$PATH

### Android
export ANDROID_HOME=~/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platforms
export PATH=${PATH}:${ANDROID_HOME}/platform-tools

### rbenv
export PATH=$HOME/.rbenv/bin:$PATH

### Swift toolchain
export PATH=/Library/Developer/Toolchains/swift-latest.xctoolchain/usr/bin:"${PATH}"

### rust (cargo installed binaries)
export PATH=~${PATH}:~/.cargo/bin
