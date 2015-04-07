## Description

This script allows you to upload the current file via Transmit directly from
Vim. To make it works, you need to be working on a file that's tied to a
Transmit connection which must have **DockSend** enabled.

## Installation

### Classic

Clone the repo and then:

1. Move the `apple` directory to `~/.vim`
2. Move `transmit.vim` from `plugin` to `~/.vim/plugin`

### Pathogen

Simply clone the project or add it as a submodule.

## Keymapping

For more convenience map any key, e.g.:

    nnoremap <C-S-U> :call TransmitFtpSendFile()<CR>
