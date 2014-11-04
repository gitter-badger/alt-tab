Emacs Alt-Tab
=======

Emacs Alt-tab is an extension for <a href="http://www.gnu.org/software/emacs/">GNU Emacs</a>. Alt-Tab adds a sense of ease inside of Emacs. Whether it be switching buffers, or organizing your workspace.

Features
=======

- Undemanding buffer transponding.
- Painless session creator and restorer.

Installation
=======

1. Download this repository and extract it to your Emacs directory ( ex. `.emacs.d` ).<br/>
2. If you don't already have the following code in your `.emacs` file, add it:
```lisp
(add-to-list 'load-path "~/.emacs.d")
```
Then, to actually include the package, Add the following lines of code to your `.emacs` file:
```lisp
(require 'alt-tab)
```
How to use
=======

<b>Sessions</b><br/>
<kbd>M-x</kbd>`session-save` - Saves your current session for use later. <br/>
<kbd>M-x</kbd>`session-restore` - Restores you previous saved session.

<b>Buffers</b><br/>
<kbd>M-x</kbd>`transpose-buffers` - Switches the buffers around. <br/>
<kbd>M-x</kbd>`open-buffer-frame` - Opens the current buffer in a new frame. <br/>
<kbd>M-x</kbd>`kill-other-buffers` - Kills/Closes all buffers except the current one.

<b>Getting Around</b><br/>
<kbd>C-e</kbd> - List all the buffers that you can select. A little different then the default `list-buffers`.<br/>

Why do we call it Alt-Tab?
=======

We call it Alt-Tab because of the shortcut on most operating systems that allows switching between top-level windows without using the mouse. Click <a href="http://en.wikipedia.org/wiki/Alt-Tab">here</a> to read more about that.
