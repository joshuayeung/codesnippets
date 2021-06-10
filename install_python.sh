# update the Debian package list
sudo apt-get update

# install Git
sudo apt-get install git

# install Python
sudo apt-get install python3-setuptools python3-dev build-essential

# install pip
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
sudo python3 get-pip.py

# verify the installation by checking the Python and pip version
python3 --version
pip3 --version

# Python virtual environments are used to isolate package installation from the system
virtualenv -p python3 vrenv
# Activate the virtual environment
source vrenv/bin/activate

