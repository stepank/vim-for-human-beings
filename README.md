# vim-for-human-beings

vim-for-human-beings was created after many futil attempts to find a text editor that would meet these requirements:

* cross platform (Linux & Windows),
* console based (suitable to use on servers),
* powerful, but easy to use.

It turned out that such an editor just did not exist (I can't stand vim as it is, cream is not intented to be used in console). So I had to create something that would suit me out of the available materials, i. e. a slightly modified vim. The result is not ideal, it has some bugs and limitations. However, as I do not generally use it for coding, I can tolerate these issues and use some known workarouns.


## What it can

Of course, there is some usual stuff that I expect from a decent editor:
* highlights syntax,
* shows line numbers,
* shows matching brackets,
* does autoindentation,
* does not create backups (don't need them),
* makes tab symbol visible,
* supports incremental search,
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
* _Shift + F#_ - search backward.
* _Ctrl + R_ - replace ALL occurences. First, enter the text you want to replace, then _/_, then the replacement string and hit _Enter_.

Other edit functions:

* _Ctrl + C_ - copy.
* _Ctrl + X_ - cut.
* _Ctrl + V_ - paste.
* _Ctrl + Z_ - undo.
* _Ctrl + Y_ - redo.


## Limitations (or bugs)

Alhough selection with _Shift + Arrows_ generally works, it behaves slightly different from what most people might expect:
* After you start selecting text, a symbol under the cursor is considered selected. Therefore, don't be surprised when you press, say, _Shift + Right_ and the cursor does not move, it actually has just selected one symbol. Even though this behaviour differs visually from ordinary text editors, mechanically it is quite similar.
* The consequence of the point above is that when you are at the beginning of a line and press _Shift + Down_, it selects not only the current line, but the first symbol of the next line as well. Unfortunately, I don't know an easy way to fix this. What I do in such cases is press _Shift + Left_ to unselect the unwanted symbol.
* After you start selecting text, releasing _Shift_ and navigating with arrows moves the selection. It's not a bug, it's a feature. The problem is that in Linux I use Gnome commander, which I like except for the fact that it messes _Shift + Home / End_. For now, the only way to select to the beginning / the end of the line is to hit _Shift + Left / Right_ and then just _Home / End_.

Other things:
* If you select some text, copy it to clipboard, select another piece of text and then try to paste the first piece, it won't overwrite the selected one, it just won't do anything. Again, I have no idea how to fix this. The workaround is to first hit _Del_, then paste.

## Contacting me

Feel free to contact me concerning this project via email stepankk@gmail.com. Bug fixes are welcome.

