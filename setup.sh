#change to kent repos
sudo sed -i 's/http:\/\/archive.ubuntu.com\/ubuntu/http:\/\/www.mirrorservice.org\/sites\/archive.ubuntu.com\/ubuntu/g' /etc/apt/sources.list.d/official-package-repositories.list
sudo apt update && apt upgrade -y


#install chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo add-apt-repository "deb http://dl.google.com/linux/chrome/deb/ stable main"
sudo apt update
sudo apt install -y google-chrome-stable

#install codium
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg \
    | gpg --dearmor \
    | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg
echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://download.vscodium.com/debs vscodium main' \
    | sudo tee /etc/apt/sources.list.d/vscodium.list
sudo apt update && sudo apt install -y codium

#install spotify
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get install -y spotify-client

sudo apt install -y blender gimp htop inkscape nginx openssh-server steam virtualbox whatsapp-desktop

# open the page for node installation
google-chrome https://github.com/nodesource/distributions/blob/master/README.md#debinstall &
