%include yor-arm-base.ks

part swap --size=256 --fstype swap
part / --size=1200 --fstype ext4

rootpw yorlinux

%packages
-@base
-@dial-up
-initial-setup-gui
%end

%post

# setup systemd to boot to the right runlevel
echo -n "Setting default runlevel to multiuser text mode"
rm -f /etc/systemd/system/default.target
ln -s /lib/systemd/system/multi-user.target /etc/systemd/system/default.target
echo .

echo -n "Disabling initial-setup text mode on startup"
rm -f /etc/systemd/system/multi-user.target.wants/initial-setup-text.service
echo .

%end

