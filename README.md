# dotfiles

Sourced from http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/ w/ modifications.

Clone to new computer:

0. Ensure SSH key on computer is added to git (add something like ~/.ssh/id_rsa.pub to git's SSH key list)
1. <code> cd </code>
2. <code> git@github.com:kschoolz/dotfiles.git </code>

Update local repo:

1. <code> git pull </code>

Update github (remote) repo:

1. <code> cd ~/dotfiles </code>
1. <code> git pull </code> to merge local repo w/ origin
2. <code> git add </code> $file to add your files.
2. <code> git commit -m 'Changed vim colorscheme!' </code>
3. <code> git push </code>
