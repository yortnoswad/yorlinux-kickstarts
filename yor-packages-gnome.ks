%packages

# Exclude unwanted groups that yor-install-base.ks pulls in

# GNOME Desktop default
@directory-client
@fonts
@gnome-desktop
@guest-agents
@guest-desktop-agents
@input-methods
@internet-browser
@java-platform
@multimedia
@network-file-system-client
@print-client
@x11

# GNOME Desktop optional
@backup-client
@gnome-apps
@internet-applications
@legacy-x
@office-suite
@remote-desktop-clients
@smart-card

# Others


# Exclude unwanted packages from @anaconda-tools group
-gfs2-utils

%end
