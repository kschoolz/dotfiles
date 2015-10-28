# dotfiles

Sourced from http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/ with minor modifications.

How to quicky import dotfiles to new system:

0. <code> cd ~ </code>
1. <code> git clone git://github.com/kschoolz/dotfiles.git </code>
2. <code> cd ~/dotfiles </code>
3. <code> chmod +x makesymlinks.sh </code>
4. <code> ./makesymlinks.sh </code>

Update local repo:

1. <code> git pull origin master </code>

Update github (remote) repo:

1. <code> cd ~/dotfiles </code>
2. <code> git commit -m 'Changed vim colorscheme!' </code>
3. <code> git push origin master </code>
