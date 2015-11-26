# dotfiles

Sourced from http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/ with minor modifications.

How to quicky import dotfiles to new system:

0. <code> cd ~ </code>
1. <code> git clone http://github.com/kschoolz/dotfiles.git </code>
2. <code> cd ~/dotfiles </code>
3. <code> chmod +x makesymlinks.sh </code>
4. <code> ./makesymlinks.sh </code>
5. Fix remote url <code> git remote set-url origin git@github.com:kschoolz/dotfiles.git</code>

Update local repo:

0. [[Add SSH key for new system to Github|https://help.github.com/articles/generating-ssh-keys/]]
1. <code> git pull origin master </code>

Update github (remote) repo:

1. <code> cd ~/dotfiles </code>
2. <code> git commit -m 'Changed vim colorscheme!' </code>
3. <code> git push origin master </code>
