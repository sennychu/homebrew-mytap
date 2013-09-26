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

In short:
---------
* [Fork Homebrew](https://github.com/mxcl/homebrew/fork).

 ```sh
 brew create http://example.com/foo-0.1.tar.gz
 git checkout -b foo
 git commit Library/Formula/foo.rb && git push
 ```
 
* [Pull Request](https://github.com/mxcl/homebrew/pulls).

In long:
--------
* [Formula Cookbook](https://github.com/mxcl/homebrew/wiki/Formula-Cookbook)
* [Acceptable Formulae](https://github.com/mxcl/homebrew/wiki/Acceptable-Formulae)

Useful Help:
------------
* [Install Homebrew](https://github.com/mxcl/homebrew/wiki/Installation)
* [FAQ](https://github.com/mxcl/homebrew/wiki/FAQ)
* [Tips n' Tricks](https://github.com/mxcl/homebrew/wiki/Tips-N%27-Tricks)
* [Gems, Eggs and Perl Modules](https://github.com/mxcl/homebrew/wiki/Gems%2C-Eggs-and-Perl-Modules) and [Homebrew and Python](https://github.com/mxcl/homebrew/wiki/Homebrew-and-Python)
* `brew help` or `man brew` or check the Homebrew [wiki](https://github.com/mxcl/homebrew/wiki).
What Packages Are Available?
----------------------------
1. You can [browse the Formula directory on GitHub](https://github.com/Homebrew/linuxbrew/tree/linuxbrew/Library/Formula).
2. Or type `brew search` for a list.
3. Or run `brew server` to browse packages off of a local web server.
4. Or visit [braumeister](http://braumeister.org) to browse packages online.
