#!/bin/bash

# Ask for username and password.
echo
echo "Please enter login information:"
echo -n user:\ ; read USER
echo -n pass:\ ; read -s PASS
echo

echo
echo "Installing service script..."
curl "https://raw.github.com/hexanome/autoconnect/master/autoconnect" | \
sed "s_USER=user_USER=${USER}_" | \
sed "s_PASS=pass_PASS=${PASS}_" | \
sudo tee "/etc/init.d/autoconnect" > /dev/null
# TODO append service start to /etc/rc.local to launch on startup

echo
echo "Protecting user information..."
sudo chown root /etc/init.d/autoconnect
sudo chmod 511 /etc/init.d/autoconnect

echo
echo "Starting autoconnect..."
sudo service autoconnect start

echo
echo "If there were no errors, installation is complete!"
echo "- To change your login information, reinstall."
echo "- To start the autoconnect daemon:"
echo "  sudo service autoconnect start"
echo "- To stop it:"
echo "  sudo service autoconnect stop"
echo "Enjoy!"
