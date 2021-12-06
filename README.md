# Create new chezmoi repo local
```
$ chezmoi init
```

# Add the chezmoi repo on github
```
$ chezmoi cd
$ git remote add origin https://github.com/mdomazet/dotfiles.git
$ git push -u origin main (or master)
```

# Checkout chezmoi on new machines (need github key)
```
$ chezmoi init --apply --verbose https://github.com/mdomazet/dotfiles.git
```

# Commit changes to chezmoi
```
$ git add -A
$ git commit
$ git push -u origin main (or master)
```
