echo " * 2 ------------- > INSTALL S -- N -- M "

apt-get -f install  -y \
        jq \
        nano \
        psmisc \
        sudo \
        cron python3-pil \
        software-properties-common python3 python3-dev python3-numpy \
        openvpn autocutsel  python3-pip python3-tk python3-dev  pwgen  \
        wget openssh-server locate nano gedit screen  net-tools curl git tor \
        xfce4-goodies xfce4\
        thunar tumbler xarchiver \
        mugshot thunar-archive-plugin \
        dbus-x11 xauth xinit x11-xserver-utils xdg-utils \
        tightvncserver novnc python3-websockify python3-pyvirtualdisplay \
        build-essential pwgen supervisor \
        xvfb xserver-xephyr ttf-wqy-zenhei python2.7 < /dev/null > /dev/null
pip3 install selenium==4.0.0.a1 pymysql pyvirtualdisplay faker-e164 Faker PySocks stem  bs4   ConfigParser lxml  speechrecognition requests \
 pyvirtualdisplay pydub pyautogui emojis emoji  \
 mysql-connector-python device_detector selenium-stealth
echo " * 2 ++++++++++++++++++++++++ > DONE !!! S -- N -- M "
cd /dockerstartup/
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
chmod +x geckodriver*
cp geckodriver* /usr/bin/

apt install --assume-yes xfce4 desktop-base xfce4-terminal xscreensaver  < /dev/null > /dev/null


bash -c 'echo \"exec /etc/X11/Xsession /usr/bin/xfce4-session\" > /etc/chrome-remote-desktop-session'
