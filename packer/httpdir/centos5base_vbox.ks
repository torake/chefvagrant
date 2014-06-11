#platform=x86, AMD64 eller Intel EM64T
# System authorization information
auth  --useshadow  --enablemd5 
# System bootloader configuration
bootloader --location=mbr --append="nolapic"
# Clear the Master Boot Record
zerombr
# Partition clearing information
clearpart --all --initlabel 
# Use text mode install
text
# Firewall configuration
firewall --disabled
# Run the Setup Agent on first boot
firstboot --disable
# System keyboard
keyboard sv-latin1
# System language
lang en_US
# Installation logging level
logging --level=info
# Use CDROM installation media
cdrom
# Network information
network --bootproto=dhcp --device=eth0 --onboot=on
# Reboot after installation
reboot
#Root password
rootpw --iscrypted $1$EDTpt0cS$m5bwjU1V6QIwarcwMwIMr/

# SELinux configuration
selinux --disabled
# System timezone
timezone  Europe/Stockholm
# Install OS instead of upgrade
install
# X Window System configuration information
xconfig  --defaultdesktop=GNOME --depth=8 --resolution=640x480
# Disk partitioning information
part / --bytes-per-inode=4096 --fstype="ext3" --grow --maxsize=10000 --size=1

%packages
@base

%post
cat /proc/cmdline > /root/ks_cmdline.txt
umask 077
mkdir /root/.ssh
echo "ssh-dss AAAAB3NzaC1kc3MAAACBAIwwH9stn6TgK/pUnYc78XiW4of0lZVohy1of1RXXk1mELM2Ha5rSPrXReWmbyGko4G0vH/gR+1NnCamZkbCTyJnw8KFlCGYeh6uO8rbtdUHsXy79TXzixhEIZzj0V4g0Q7/chfAwI4+5XYD1qdOsU7CDEiRj+Z8zx+DVAAap72NAAAAFQCzVo78ccB8DnJL/VsQrM0vbEj4WwAAAIAbjlgTtiO0vw6ZhL5xL9HKIeXLJFvr/rZE1XFsHT15EKHY6mwQu/hvnbGaG/5POXlNilVexE07zEnC4Fil4w/2NOUTxxj0Aq9k1Hk2JSVreoyCxjmHmXcILfqR6qXYLz5sXkSDUr0BQuUojCHnSt78TeEJHlXjeqD00nxeqPDFLAAAAIBypcbQHbXjhnJ36tQg0s/w3wD9YLNkznjqsjcI1KaDOsplNR1tsjIq68a2lls3lXF5Fh/yoIZwpyJh1sPDq8U+rsSJXrFItz8crQ5CmnCgk+bQ/G+pp92SnwMbwEmH4+CYavrA1+BdvZChVYEtospJ+LQCoVQbX7vIDjqk9WeUXQ== packer@localhost" > /root/.ssh/authorized_keys2

