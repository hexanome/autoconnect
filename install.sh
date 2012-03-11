#!/bin/bash

# Ask for username and password.
echo "Please enter login information:"
echo -n user:\ ; read USER
echo -n pass:\ ; read -s PASS

echo "Installing service script..."
curl https://raw.github.com/hexanome/autoconnect/autoconnect | \
sed "s_USER=user_USER=$(USER)" | \
sed "s_PASS=pass_PASS=$(PASS)" | \
sudo tee /etc/init.d/autoconnect
echo "service autonnect start" | sudo tee -a /etc/rc.local

echo "Protecting user information..."
sudo chown root /etc/init.d/autoconnect
sudo chmod 511 /etc/init.d/autoconnect

echo "Starting autoconnect..."
sudo service autoconnect start

echo "If there were no errors, installation is complete!"
echo "To change your login information, reinstall."
echo "To start the autoconnect daemon:"
echo "  sudo service autoconnect start"
echo "To stop it:"
echo "  sudo service autoconnect stop"
echo "Enjoy!"
