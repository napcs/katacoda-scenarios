If you need to reference a filename or directory in a command, you can type part of the name, followed by the `Tab` key, and the CLI will attempt to autocomplete the word for you. Try this out. Switch to the `Documents` directory in your home directory like this:

~~~
cd ~/Doc<Tab>
~~~

As soon as you press `Tab`, the word `Documents` will expand. This technique serves two purposes. First, it saves you from typing the whole name, which means you'll make less typos. But second, the CLI only completes filenames and directory names it can find. If it can't complete it, there's a good chance it doesn't have enough information, or the file doesn't actually exist. Try this out. Navigate to your home directory:


~~~
$ cd
~~~

Then type


~~~
$ cd D<Tab>
~~~

You won't see anything. This is because Bash doesn't have enough information to do the completion, because you probably have a `Documents` folder as well as a `Downloads` folder.

But if you press `Tab` again, you'll see a list of possible options:


~~~
Desktop/   Documents/ Downloads/
~~~

Type a few more characters and press <keystroke>Tab</keystroke> to let it autocomplete the rest of the directory name.

Now try autocompleting `var` from your Home directory:


~~~
$ cd va<Tab>
~~~

This time, pressing `Tab` doesn't do anything. And pressing it a second time doesn't either, since there's no `var` folder in the current directory. You can use this as a good test while you're learning how to navigate around; if you can't autocomplete the filename or directory, you might not be looking in the right spot.
