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

---
# Install on new machines
```
$ apt update && apt install -y curl gpg sudo git && mkdir -p $HOME/.config/chezmoi && cat << EOF > $HOME/.config/chezmoi/chezmoi.toml 
encryption = "gpg"
[gpg]
    symmetric = true
EOF

$ sh -c "$(curl -fsLS git.io/chezmoi)" -- init --apply mdomazet
```

# Commit changes to chezmoi
```
$ git add -A
$ git commit
$ git push -u origin main (or master)
```
