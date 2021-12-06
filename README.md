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

# Checkout chezmoi on new machines
```
$ chezmoi init --apply --verbose mdoamzet
```

# Commit changes to chezmoi
```
$ git add -A
$ git commit
$ git push -u origin main (or master)
```
