Linuxbrew
=========
An experimental fork of Homebrew for Linux.Modefi by sennychu.

Installation
------------

* Debian or Ubuntu: `sudo apt-get install build-essential curl git ruby`
* `git clone https://github.com/sennychu/linuxbrew.git ~/.linuxbrew`
* Add to your `.bashrc`:

 ```sh
 export PATH=~/.linuxbrew/bin:$PATH
 export LD_LIBRARY_PATH=~/.linuxbrew/lib
 ```

* `brew install $WHATEVER_YOU_WANT`

What Packages Are Available?
----------------------------
1. You can [browse the Formula directory on GitHub](https://github.com/Homebrew/linuxbrew/tree/linuxbrew/Library/Formula).
2. Or type `brew search` for a list.
3. Or run `brew server` to browse packages off of a local web server.
4. Or visit [braumeister](http://braumeister.org) to browse packages online.

Requirement
-----------
* **Ruby** 1.8.6 or newer

More Documentation
------------------
`brew help` or `man brew` or check the Homebrew [wiki](https://github.com/mxcl/homebrew/wiki).
