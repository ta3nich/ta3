echo " * 3 ------------- > INSTALL frfx-60 "

mkdir -p /root/EXTRAT/

mkdir /root/EXTRAT/firefox-60.0.1esr/

wget -q https://ftp.mozilla.org/pub/firefox/releases/60.0.1esr/linux-x86_64/en-US/firefox-60.0.1esr.tar.bz2 && tar -xf firefox-60.0.1esr.tar.bz2 -C /root/EXTRAT/firefox-60.0.1esr/

rm *.tar.bz2

echo " * 3 ------------- > INSTALL geckodriver-v0.32.0 "
wget https://github.com/mozilla/geckodriver/releases/download/v0.32.0/geckodriver-v0.32.0-linux64.tar.gz

apt install --assume-yes xfce4 desktop-base xfce4-terminal



