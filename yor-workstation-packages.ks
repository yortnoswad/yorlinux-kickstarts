%packages

# Exclude unwanted groups that fedora-live-base.ks pulls in
-@dial-up
-@input-methods

# Make sure to sync any additions / removals done here with
# workstation-product-environment in comps
@base-x
@core
@firefox
@fonts
@guest-desktop-agents
@hardware-support
@libreoffice
@multimedia
@networkmanager-submodules
@printing
@workstation-product

# Exclude unwanted packages from @anaconda-tools group
-gfs2-utils
-reiserfs-utils

%end
