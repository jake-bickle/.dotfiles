# Add path environments here
PYTHON_BIN_PATH="$(python3 -m site --user-base)/bin"
HOMEBREW_PATH="/usr/local/opt/pythonlibexec/bin" 
export PATH="$HOMEBREW_PATH:$PYTHON_BIN_PATH:$PATH"
