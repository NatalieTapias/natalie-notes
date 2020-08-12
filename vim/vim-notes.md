# What is Vim 
Vim is a built in text editor that comes with almost all Unix systems. It is hyperefficient and provides opportunities for customizing features and settings using an extensive plugin system. You can customize Vim on a per-user basis, using the local `.vimrc` file, or set configurations to apply system-wide, by using the Global `vimrc` File.

For now, I am deciding to modify the local `.vimrc` file in my home directory, located at `~/.vimrc`  

## Start Using Vim 
### basics	
- open a vile with the command `vim <filename>`
- insert mode with `I`, insert at end of line with `A`
- go to beginning of line while in normal mode : `0` 
- navigate to end of line in normal mode : `^`

### Navigate the file system
- to exit current buffer (I think that's right?) and go back to view file directory `:e .`



### Links that have been helpful 
[https://support.apple.com/guide/terminal/keyboard-shortcuts-trmlshtcts/mac](Apple Guide to Keyboard shortcuts in Terminal)

------

## Modes 
| Action | Command |
| ------ | ------- |
| Insert Mode | `i` |
| Append (Insert end of line) | `A` |
| Visual Mode | `v` |


## Windows 
| Action | Command |
| ------ | ------- |
| Split Horizontally | - :sp <filename> |
| Split Vertically  | - :vs <filename> |
| Jump Between Windows | - ctrl w [hjkl] |

## Tabs
| Action | Command |
| ------ | ------- |
| Open Tabs | vim -p <path/to/file> (... additional files to open) |    
| Open Tabs (Normal Mode)  | :tabe <path/to/file> (...additional paths to files to open in tab) |
| Jump Between Tabs (forward) | gt or :tabn |
| Jump Between Tabs (backward) | `gT` or `:tabp` |
| Jump To Tab # N | ngt (where n is tab index, starting with 1) | 
| Close Current Tab | :tabc |


