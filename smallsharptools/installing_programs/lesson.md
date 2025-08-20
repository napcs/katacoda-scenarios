Your operating system has a bunch of programs already installed, but you'll want to install more. You might be used to going to an "app store" or downloading some files from a web site and installing them, but Linux and BSD systems traditionally offer package managers to make downloading and installing software easy. Each operating system has its own package manager.


* If you're using Bash on Windows, you'll use `apt`, as the Bash environment is based on Ubuntu.
* If you're on macOS, you'll use Homebrew and the `brew` command.


Whenever you use the package manager to install a program, make sure you have the latest list of packages. The package manager will have a command that fetches that list for you. If you're using `apt`, you'll use this command:


`sudo apt update`{{ execute }}



Let's install the `tree` package, which lets us visualize a directory structure. We'll use it in the next chapter. For systems using `apt`, install it with the following command:

`sudo apt install tree`{{ execute }}


The package manager will install the program. It may ask you to confirm the installation, which you should accept. Once the package is installed, you'll be able to use the `tree` command.  Try it out.


`tree --version`{{ execute }}

You'll see this output:

~~~
tree v2.1.1 (c) 1996 - 2023 by Steve Baker, Thomas Moore, Francesc Rocher, Florian Sesser, Kyosuke Tokoro
~~~



