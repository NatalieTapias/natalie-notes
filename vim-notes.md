# Vim
Vim is a built in text editor that comes with almost all Unix systems. It is hyperefficient and provides opportunities for customizing features and settings using an extensive plugin system. You can customize Vim on a per-user basis, using the local `.vimrc` file, or set configurations to apply system-wide, by using the Global `vimrc` File.

For now, I am deciding to modify the local `.vimrc` file in my home directory, located at `~/.vimrc`  
I am storing a copy of my preferred customization [here](https://github.com/NatalieTapias/natalie-notes/blob/master/dotfiles/.vimrc). 
## Start Using Vim 
### basics	
- open a vile with the command `vim <filename>`
- insert mode with `I`, insert at end of line with `A`
- go to beginning of line while in normal mode : `0` 
- navigate to end of line in normal mode : `^`

### Navigate the file system
- to exit current buffer (I think that's right?) and go back to view file directory `:e .`



### Links that have been helpful 
- [Apple Keyboard Shortcuts in Terminal](https://support.apple.com/guide/terminal/keyboard-shortcuts-trmlshtcts/mac)
- [Mardown Cheat Shet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)
- [Vim Cheat Sheet (from weekend.dev)](https://vim.rtorr.com/)
- [Vim Editor Commands](https://www.radford.edu/~mhtay/CPSC120/VIM_Editor_Commands.htm)
------

## Modes 
(source `:h vim-modes-intro`)
Vim has seven BASIC modes:

- *Normal*: In Normal mode, you can enter all normal editor commands. This is also known as command mode.
- *Visual*: The movement commands extend a highlighted area. When a non-movement command is used, it is executed for the highlighted area.
- *Insert*: The text you type is inserted into the buffer. 

The most important ones are *normal*, *insert*, and *visual*.

## Vim Cheat Sheet 

### Navigate Between Modes
| Action | Command |
| ------ | ------- |
| Insert Mode | `i` |
| Append (Insert end of line) | `A` |
| Visual Mode | `v` |
| Replace |r + <character to replace> |
| Command-Line | |

### Cursor Movement
| Action | Command |
| ------ | ------- |
| Jump to End of File | `G` |
| Jump to Beginning of File | `g` |
| Left, Down, Up, Right | h j k l | 
| Top of screen *head of screen* | `H` |
| Middle of Screen | `M` |
| Bottom of Screen | `L` |
| jump forwards to start of word | `w` |
| jump forwards to start of word (can contain punctuation) | `W` |
| jump forwardst to *end* of word | `e` |
| jump forwards to end of word (can contain punctuation) | `E` |
| ---- | ---- |
| jump to line N | `ngg` or `nG` |

### Navigating a File System 
| Action | Command |
| ------ | ------- |
| File Explorer Window | `:Explore` |
| List file names in current directory | (in normal mode) `:e CTRL-D` |

### Text Editing 
| Action | Command |
| ------ | ------- |
| Undo   | `u`     |
| Restore (undo) last changed line | `U`|
 

###  Cut & Paste 
| Action | Command |
| ------ | ------- |
| Yank (copy) a line | `yy` |
| Yank (copy) n lines | `nyy` |
| Paste after curosr | `P` |
| Paste before cursor | `p` |
| Delete (cut) a line | `dd` |
| Delete (cut) n lines | `ndd` |
| Delete the characters of the word from the cursor position to the start of the next word | `dw` |
| Delete to End of Line | `D` |
| Delete character | `x` |

### Indent Text 
| Action | Command | 
| ------ | ------- |
| Indent Right one Shiftwidth | `>>` |
| Indent Left one Shiftwidth | `<<` | 
| Indent Block with  () or {} (cursor on brace) | `>%` | `

###  Windows 
| Action | Command |
| ------ | ------- |
| Split Horizontally | :sp <filename> |
| Split Vertically  |  :vs <filename> |
| Jump Between Windows | ctrl w [hjkl] |

### Tabs
| Action | Command |
| ------ | ------- |
| Open Tabs | vim -p <path/to/file> (... additional files to open) |    
| Open Tabs (Normal Mode)  | :tabe <path/to/file> (...additional paths to files to open in tab) |
| Jump Between Tabs (forward) | gt or :tabn |
| Jump Between Tabs (backward) | `gT` or `:tabp` |
| Jump To Tab # N | ngt (where n is tab index, starting with 1) | 
| Close Current Tab | :tabc |


