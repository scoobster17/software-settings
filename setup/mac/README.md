# Machine Setup / MacOS

## Obtaining Setup Scripts
```
curl \
  -L -o \
    ~/Desktop/software-settings-master.zip \
    https://github.com/scoobster17/software-settings/archive/master.zip \
  && unzip ~/Desktop/software-settings-master.zip -d ~/Desktop \
  && rm ~/Desktop/software-settings-master.zip
```

## Running Setup Scripts
```
DIR=$(pwd) \
  && cd ~/Desktop/software-settings-master/setup/mac \
  && bash ./index.sh \
  && cd $DIR
```