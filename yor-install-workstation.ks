# Use a part of 'iso' to define how large you want your isos.
# Only used when composing to more than one iso.
# Default is 695 (megs), CD size.
# Listed below is the size of a DVD if you wanted to split higher.
#part iso --size=4998

# Add the repos you wish to use to compose here.  At least one of them needs group data.

# In the master branch the rawhide repo commands should be uncommented.
repo --name=base --baseurl=file:///data/yort/repo/7testing/$basearch/os
#repo --name=base --baseurl=http://mirror.yorlinux.org/pub/linux/yor/7/build/$basearch

%include yor-workstation-packages.ks

# Package manifest for the compose.  Uses repo group metadata to translate groups.
# (default groups for the configured repos are added by --default)
%packages
@base
@core

# pungi is an inclusive depsolver so that multiple packages are brought 
# in to satisify dependencies and we don't always want that. So we  use
# an exclusion list to cut out things we don't want
-kernel*debug*
-kernel-tools*

# Things needed for installation
@anaconda-tools
grubby

%end
