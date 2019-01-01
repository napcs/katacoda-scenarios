When you issued the command


~~~command
$ cat greetings.txt
~~~

the contents of the file were displayed on the screen. Since the file was small, it all fit on one screen. But try reading the contents of a much larger file and see what happens. Your OS contains a dictionary of words located at `/usr/share/dict/words`. Use the `cat` command to display its contents.


~~~command
$ cat /usr/share/dict/words
~~~

You'll see the contents of the file scroll by until it reaches the end. You'll encounter this a lot when working on the command line. You might have the source code to a program you're working on, a document you're editing, or a log file you're using to diagnose an issue.

The `less` and `more` programs can read files too, so you can read the contents of that huge dictionary file:

~~~command
$ less /usr/share/dict/words
~~~


The contents will be displayed one page at a time. Use the `Enter` key to display the next line, the `Spacebar` to jump to the next page, and the `Q` key to exit and return to your prompt.

Using the `less` command gives you more control; you can use the arrow keys to move forward and backward through the file. On most systems, the `less` and `more` commands run the same program. The `more` command is a legacy program, but it's still quite popular .

