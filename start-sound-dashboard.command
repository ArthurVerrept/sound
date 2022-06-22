osascript -e "
      tell application \"Terminal\"
        activate
        tell application \"System Events\" to keystroke \"t\" using command down
        repeat while contents of selected tab of window 2 starts with linefeed
          delay 0.01
        end repeat
        do script \"cd Sound/sound-api && npm run start:dev\" in window 1
      end tell
    "

osascript -e "
      tell application \"Terminal\"
        activate
        tell application \"System Events\" to keystroke \"t\" using command down
        repeat while contents of selected tab of window 2 starts with linefeed
          delay 0.01
        end repeat
        do script \"cd Sound/sound-dashboard && npm run dev\" in window 0
      end tell
    "
# osascript -e 'tell application "Terminal" to do script "cd sound-dashboard && npm run dev"'