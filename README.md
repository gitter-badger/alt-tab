Emacs Alt-Tab
=======

Emacs Alt-tab is an extension for <a href="http://www.gnu.org/software/emacs/">GNU Emacs</a>. Alt-Tab adds a sense of ease inside of Emacs. Whether it be switching buffers, or organizing your workspace.

Features
=======

- Undemanding buffer transponding.
- Painless session creator and restorer.
- Uncomplicated workflow editor.

Installation
=======

1. Download this repository and extract it to your Emacs directory ( ex. `.emacs.d` ).
2. Add the following lines of code to your `.emacs` file:

`(require 'alt-tab)`

How to use
=======

Let's say I have a flawless session open, that I spent a long time making, like below:



And I want to keep this session for later use... What I would do is:

1. Call the `session-save` command or <kbd>M-x</kbd>`session-save`.
2. Close out of Emacs.
3. Call the `session-restore` command or <kbd>M-x</kbd>`session-restore`.
4. Wala! Your previous saved session is now restored.


Why do we call it Alt-Tab?
=======

We call it Alt-Tab because of the shortcut on most operating systems that allows switching between top-level windows without using the mouse. Click <a href="http://en.wikipedia.org/wiki/Alt-Tab">here</a> to read more about that.
