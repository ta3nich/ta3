cd /dockerstartup/
echo "$US_PS"
username="azer"
password="azer"
echo " * 3 ------------- > INSTALL frfx-60 " $US_PS

mkdir -p /root/EXTRAT/

mkdir /root/EXTRAT/firefox-60.0.1esr/

############## firefox-60.0
wget -q https://ftp.mozilla.org/pub/firefox/releases/60.0.1esr/linux-x86_64/en-US/firefox-60.0.1esr.tar.bz2 && tar -xf firefox-60.0.1esr.tar.bz2 -C /root/EXTRAT/firefox-60.0.1esr/

wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget -q https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
wget -q https://github.com/thingst0d0/g00rm/raw/main/ocs-url_3.1.0-0ubuntu1_amd64.deb
#########################################################################################

echo " * 3 ------------- > INSTALL geckodriver-v0.32.0 "
wget -q https://github.com/mozilla/geckodriver/releases/download/v0.32.0/geckodriver-v0.32.0-linux64.tar.gz && tar -xf geckodriver-v0.32.0-linux64.tar.gz

apt install --assume-yes xfce4 desktop-base xfce4-terminal xscreensaver  < /dev/null > /dev/null
apt install --assume-yes ./chrome-remote-desktop_current_amd64.deb

bash -c 'echo \"exec /etc/X11/Xsession /usr/bin/xfce4-session\" > /etc/chrome-remote-desktop-session'

#####
useradd -m $username
adduser $username sudo
echo $username':'$password | sudo chpasswd
sed -i 's/\/bin\/sh/\/bin\/bash/g' /etc/passwd
mkdir -p /home/azer/.config
chown azer:azer /home/azer/.config
adduser azer chrome-remote-desktop
DISPLAY= /opt/google/chrome-remote-desktop/start-host --code="4/0AWgavderlsPEPkuGg1tVHX7LWh9qB_d9gaOKvHil56EE-4QJ1_SoJBToV5Khe01x2eQECQ" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=$(hostname) --pin=001122



rm *.tar.bz2 *.tar.gz



