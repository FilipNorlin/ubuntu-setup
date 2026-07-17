#!/bin/bash

set -e

echo "====================================="
echo " Ubuntu Engineering Setup"
echo "====================================="

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

chmod +x $SCRIPT_DIR/scripts/*.sh


source $SCRIPT_DIR/scripts/base.sh
#source $SCRIPT_DIR/scripts/directories.sh
source $SCRIPT_DIR/scripts/terminal.sh
source $SCRIPT_DIR/scripts/development.sh
source $SCRIPT_DIR/scripts/docker.sh
source $SCRIPT_DIR/scripts/vscode.sh
#source $SCRIPT_DIR/scripts/kicad.sh
source $SCRIPT_DIR/scripts/electronics.sh
source $SCRIPT_DIR/scripts/terminal_theme.sh


echo ""
echo "====================================="
echo " Installation complete!"
echo " Please reboot your system."
echo "====================================="
