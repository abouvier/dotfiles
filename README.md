# Fichiers point

Fichiers de configuration à destination principalement d'Arch Linux. Utilise [GNU Stow](https://www.gnu.org/software/stow/) pour créer des liens symboliques dans le répertoire `$HOME`.

## Installation

```bash
git clone https://github.com/abouvier/dotfiles.git
cd dotfiles
make
```

## Suppresion des lien symboliques

```bash
make uninstall
```
