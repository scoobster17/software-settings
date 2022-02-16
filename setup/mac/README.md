# Machine Setup / MacOS

## Obtaining Setup Scripts
```
curl \
  -L -o \
    ~/Desktop/software-settings-main.zip \
    https://github.com/scoobster17/software-settings/archive/main.zip \
  && unzip ~/Desktop/software-settings-main.zip -d ~/Desktop \
  && rm ~/Desktop/software-settings-main.zip
```

## Running Setup Scripts
```
DIR=$(pwd) \
  && cd ~/Desktop/software-settings-main/setup/mac \
  && bash ./index.sh \
  && cd $DIR
```