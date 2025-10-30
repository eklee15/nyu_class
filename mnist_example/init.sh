#!/bin/bash
# this is an initialization script

# Check if the 'pip' command is available
if command -v pip3 &> /dev/null; then
    echo "pip command is available. Executing pip-related tasks..."
    # Add your pip-related commands here
    pip3 --version
else
    echo "pip command is not found. Please ensure Python and pip are installed and added to your PATH."
    sudo apt install -y pip
fi

# Install mnist example
git clone https://github.com/pytorch/examples.git

# Create Python environment
python3 -m venv mnist-env
source mnist-env/bin/activate

cd examples/mnist
pip install -r requirements.txt
python main.py --dry-run --epochs 2



