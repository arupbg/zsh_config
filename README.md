My zsh and vim configuration.
Also some tools :D

I have created a code to fix the problems of vim-plugins written in windows when they are installed in linux. But recently I found a solution on:

https://nlknguyen.com/2016/06/03/vim-tip-fix-plugin-loading-error-not-an-editor-command-m/

It saids that is only needed to configure git using:

  $ git config --global core.autocrlf input

In case that this doesn't work you can always try my code

What does vimfix does?

It searches vim files into your /home/your_user_name/.vim directory then converts them into linux format using the instruction: $ dos2unix -f file.vim

The code will suppose that your .vim directory is under /home/your_user_name/.vim, by default works for zsh and bash terminal interpreters. In case that you are not using any of this interpreters the code will ask you to write tha name of your interpreter.

What is needed?

Vimfix is written in python so you'll need:
    - Python
    - dos2unix - Most distros has it already installed

How to use?

Just execute in your terminal:
    $ python vimfix.py

And thats it! Work is done!


