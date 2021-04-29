openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out /etc/vsftpd/vsftpd.crt -keyout /etc/vsftpd/vsftpd.key -subj "/C=IT/ST=Italy/L=Roma/O=42Roma/OU=dlanotte/CN=ninja_flex"

adduser -D ninja_root
echo ninja_root:ninja_root | chpasswd
echo "ninja_root" >> /etc/vsftpd/vsftpd.userlist
chown -R ninja_root:ninja_root /home/
chmod -R 777 /home/
/usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf