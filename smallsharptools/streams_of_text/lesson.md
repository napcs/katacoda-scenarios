When you used the `echo` command to create a file, you took the output of one command and directed it somewhere else.  Let's look at this in more detail.

Let's look at another example. Execute this command to view all of the running processes on your computer:


`ps -ef`{{ execute }}

The `ps` command shows you processes, and these options show you the processes for every user in all sessions. Once again, the output of the command streams by.

There are a couple ways to solve this problem. The first approach would be to capture the output to a file by using the `>` operator:



`ps -ef > processes.txt`{{ execute }}

You could then open that file in your favorite text editor and read its contents, or open it with `less` and read it one page at a time.

However, it's a little more convenient to use a program that can let you scroll through the content one page at a time. You just learned that the `more` and `less` programs show text one page at a time. You can redirect the output to one of those programs by using the pipe (`|`) character:

`ps -ef | more`{{ execute }}

Piping the output of one program to another is something you'll do quite a bit.
