cd /dockerstartup/
echo "$US_PS"
username="azer"
password="azer"




#####
useradd -m $username
adduser $username sudo
echo $username':'$password | sudo chpasswd
sed -i 's/\/bin\/sh/\/bin\/bash/g' /etc/passwd
mkdir -p /home/azer/.config
chown azer:azer /home/azer/.config
apt install --assume-yes ./chrome-remote-desktop_current_amd64.deb
apt install --assume-yes ./google-chrome-stable_current_amd64.deb
adduser azer chrome-remote-desktop
DISPLAY= /opt/google/chrome-remote-desktop/start-host --code="4/0AWgavderlsPEPkuGg1tVHX7LWh9qB_d9gaOKvHil56EE-4QJ1_SoJBToV5Khe01x2eQECQ" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=$(hostname) --pin=001122



rm *.tar.bz2 *.tar.gz



