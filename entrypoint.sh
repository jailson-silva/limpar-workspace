#!/bin/bash

set -e # Config para falhar em caso de erro

# Apagar todos os arquivos inclusivos os ocultos.
# https://askubuntu.com/questions/740805/how-can-i-remove-all-files-from-current-directory-using-terminal
shopt -s dotglob
rm -rf *
