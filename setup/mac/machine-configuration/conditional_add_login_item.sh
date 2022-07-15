#!/bin/bash

conditional_add_login_item() {
	APP_NAME=$1
	APP_WITH_PATH=/Applications/$APP_NAME.app

	if [ -d $APP_WITH_PATH ]; then
		osascript -e 'tell application "System Events" to make login item at end with properties {path:"'$APP_WITH_PATH'", hidden:false}'
		echo "$APP_NAME added as login item"
	fi
}