%packages

# Exclude unwanted groups that yor-install-base.ks pulls in

# KDE Desktop default
@directory-client
@fonts
@guest-agents
@guest-desktop-agents
@input-methods
@kde-desktop
@internet-browser
@java-platform
@multimedia
@network-file-system-client
@print-client
@x11

# KDE Desktop optional
@backup-client
@internet-applications
@kde-apps
@kde-media
@legacy-x
@office-suite
@remote-desktop-clients
@smart-card

# Others
# use kde-print-manager instead of system-config-printer
-system-config-printer
# make sure mariadb lands instead of MySQL (hopefully a temporary hack)
mariadb-embedded
mariadb-libs
mariadb-server

# minimal localization support - allows installing the kde-l10n-* packages
system-config-language
kde-l10n


# Exclude unwanted packages from @anaconda-tools group
-gfs2-utils

%end

