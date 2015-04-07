" Stolen from pathogen (avoid double inclusion)
if exists("g:loaded_vim_transmit") || &cp
  finish
endif
let g:loadded_vim_transmit = 1

let s:pluginPath = expand("<sfile>:p:h:h")

if substitute(system("uname -s"), '\n', '', '') ==# 'Darwin' "Only OSX
  function! TransmitFtpSendFile()
    let TransmitFtpFileName = expand("%:p")
    let TransmitFtpAppleScript = s:pluginPath . "/apple/send_to_transmit.applescript"

    " abort function execution if no file is open
    if TransmitFtpFileName == ''
      echo "Failed to send a file to Transmit (can't expand filename)"
      return
    endif

    silent execute '!osascript "' . TransmitFtpAppleScript . '" "' . TransmitFtpFileName . '" &>/dev/null &' | redraw!
    echo 'File "' . TransmitFtpFileName . '" sent to Transmit' 
  endfunction
endif
