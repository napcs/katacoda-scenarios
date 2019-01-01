
When you first open the command line interface, or CLI, you'll be presented with something that looks like this:

~~~
root@d184018798b0:~$
~~~

his is the *prompt*, and it's the CLI's way of telling you it's ready for you to type a command. This prompt is from the Ubuntu operating system. If you're on a Mac, your prompt might look like this:


~~~
puzzles:~ brianhogan$
~~~

These prompts may look cryptic at first, but there's valuable information here. The prompts in these examples show the username (brianhogan), the computer's hostname (puzzles), and the current directory, which is represented by a tilde (~), which always refers to your home directory.


When you open the command line interface, you'll be placed in your "home directory".


Your home directory is where you'll find your documents, music, and settings for your programs. You have total control over your home directory. You can create and delete files and directories, move things around, and even install whole programs without administrative privileges. When you launch the CLI, it'll open the session in your home directory.

The computer's disk stores files in a hierarchy of folders, or *directories*, which we call the *file system*.  When you use the GUI, you click on a folder to open it and see its contents, and an indicator at the top of the GUI window tells you where you are on the file system.

Your prompt may tell you what directory you're currently looking at. But there's a more clear way to tell, and that's with the `pwd` command, which stands for "print working directory."

At the prompt, type

`pwd`{{execute}}


The command prints the full path to the current directory to the screen:


```
/home/scrapbook
```


