The `echo` command takes text and prints it back to the screen. At the prompt, type the following command:

`echo Hello there`{{ execute }}

You'll see the text you entered printed back to you. 

~~~
Hello there
~~~


You'll use `echo` in scripts you write, so you can communicate instructions or output to users. But you can also use it to insert text into files if you combine it with a feature called <firstuse>redirection</firstuse>.

Let's create a text file in your `Desktop` directory that contains the text "Hello". We'll call this file `greetings.txt`. At the prompt, type:


`echo Hello > greetings.txt`{{ execute }}


When you press the `Enter` key you won't see any visual feedback, because the output of the `echo` command was redirected to the file you specified.



You just used the command line interface to create a file that contains some text. Right now it's a cool parlor trick, but the implications are important; this is one way you can create files on the file system programmatically and quickly without a text editor.
