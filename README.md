# vim-for-human-beings

vim-for-human-beings was created after many futil attempts to find a text editor that would meet these requirements:

* cross platform (Linux & Windows),
* console based (suitable to use on servers),
* powerful, but easy to use.

It turned out that such an editor just did not exist (I can't stand vim as it is, cream is not intented to be used in console). So I had to create something that would suit me out of the available materials, i. e. a slightly modified vim. The result is not ideal, it has some bugs and limitations. However, as I do not generally use it for coding, I can tolerate these issues and use some known workarouns.


## What it can

Of course, there is some usual stuff that I expect from a decent editor:
* syntax highlighting,
* line numbers,
* matching bracket highlightting,
* autoindentation,
* no backups (don't need them),
* visible tab symbol,
* incremental search,
* does other less important things.

However, the major difference from vim is how you work with the editor:
* insert mode is default,
* selection with _Shift + arrows_ (not without some limitations though),
* simple shortcuts.


## Shortcuts

General control:

* _Ctrl + P_ - vim command line, for vim commands (colon is already there).
* _Ctrl + T_ - terminal command line, for shell commands. Bash-like tab completion is at your disposal.
* _Ctrl + B_ - gets you to console (exit console to get back to vim).

Working with files:

* _Ctrl + N_ - open a file in a new tab. Bash-like tab completion is available here as well.
* _Ctrl + W_ - closes the current tab (won't let you do that if the file has unsaved changes, either save them or _Ctrl + P_, _q!_, _Enter_)
* _Ctrl + S_ - save the current file.
* _Alt + Left_ - previous tab.
* _Alt + Right_ - next tab.

Find & replace:

* _Ctrl + F_ - increamental search. Hit _<Enter>_ to preserve highlighting.
* _Ctrl + H_ - hide the highlighting.
* _F3_ - search forward.
* _Shift + F3_ - search backward.
* _Ctrl + R_ - replace ALL occurences. First, enter the text you want to replace, then _/_, then the replacement string and hit _Enter_.

Other edit functions:

* _Ctrl + C_ - copy.
* _Ctrl + X_ - cut.
* _Ctrl + V_ - paste.
* _Ctrl + Z_ - undo.
* _Ctrl + Y_ - redo.


## Limitations (or bugs)

_Ctrl + Home_, _Ctrl + End_, _Shift + Home_, and _Shift + End_ do not work in Gnome Terminal (which I use) out of the box. It seems to be impossible to fix this from vim side. It's Gnome Terminal (not GT itself, but VTE which GT is based on) that requires fixing. More about this in [my blog post](http://stepankk-dev.blogspot.ru/2014/02/fixing-ctrl-home-ctrl-end-shift-home.html).

## Contacting me

Feel free to contact me concerning this project via email stepankk@gmail.com. Bug fixes are welcome.

