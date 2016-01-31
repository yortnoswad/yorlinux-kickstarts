%include yor-arm-base.ks
%include yor-arm-xbase.ks
%include yor-kde-packages.ks

part / --size=5000 --fstype ext4

%post
echo -n "Enabling initial-setup gui mode on startup"
ln -s /usr/lib/systemd/system/initial-setup-graphical.service /etc/systemd/system/graphical.target.wants/initial-setup-graphical.service
echo .

%end
