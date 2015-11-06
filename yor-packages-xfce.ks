repo --name=extras --baseurl=file:///data/yort/repo/7/extras/$basearch/

%packages

# Exclude unwanted groups that yor-install-base.ks pulls in

# XFCE Desktop default
@directory-client
@fonts
@guest-agents
@guest-desktop-agents
@input-methods
@internet-browser
@java-platform
@multimedia
@network-file-system-client
@print-client
@x11
@xfce-desktop

# XFCE Desktop optional
@backup-client
@internet-applications
@legacy-x
@office-suite
@remote-desktop-clients
@smart-card

# Others


# Exclude unwanted packages from @anaconda-tools group
-gfs2-utils

%end
