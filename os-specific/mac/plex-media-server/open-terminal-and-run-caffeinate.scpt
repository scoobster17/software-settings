#!/usr/bin/env osascript

tell application "Terminal"
  if not (exists window 1) then reopen
  activate
  do script "caffeinate -dimsu" in window 1
end tell
