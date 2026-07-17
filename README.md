# Ubuntu Engineering Setup

Automated workstation setup for electronics engineering.

## Installed

### Development
- Python
- C/C++
- CMake
- GDB
- Docker
- VS Code

### Electronics
- KiCad
- ngspice
- GTKWave
- GHDL
- OpenOCD
- ST-Link tools
- PulseView

### Utilities
- Git
- tmux
- fzf
- ripgrep
- eza
- bat

## Usage

Clone:

```bash
git clone https://github.com/YOURNAME/ubuntu-engineering-setup.git
cd ubuntu-engineering-setup
./bootstrap.sh
```


---

Now we have a proper **v1.0 foundation**.

The next thing I would add is probably a `config/` system:
- your `.bashrc`
- git aliases
- VS Code settings
- KiCad library setup
- PlatformIO settings

That is where this becomes really powerful: a fresh Ubuntu install becomes **your exact engineering workstation** in one command.