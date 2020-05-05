# coreos-packages
Build the package using docker and install it on Fedora CoreOS.

## Supported packages
- htop
- tmux
- zsh

## Usage
Clone this repository.

```bash
git clone https://github.com/abcang/coreos-packages.git
cd coreos-packages
```

Run with the package and prefix to install.
```bash
./install.sh [package] [prefix]
```

Example:
```bash
./install.sh zsh /var/home/abcang/local
```

If you want to use `docker` instead of `podman`, set the command to `DOCKER`.
```
DOCKER=docker ./install.sh
```

## License
Public Domain
