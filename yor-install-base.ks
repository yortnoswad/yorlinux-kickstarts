# Use a part of 'iso' to define how large you want your isos.
# Only used when composing to more than one iso.
# Default is 695 (megs), CD size.
# Listed below is the size of a DVD if you wanted to split higher.
#part iso --size=4998

# Add the repos you wish to use to compose here.  At least one of them needs group data.

# In the master branch the rawhide repo commands should be uncommented.
repo --name=yorbase --baseurl=file:///data/yort/repo/yor/$basearch/os
repo --name=binarybase --baseurl=file:///data/yort/repo/scientific/$basearch/os
#repo --name=base --baseurl=http://mirror.yorlinux.org/pub/linux/yor/7/build/$basearch

# Package manifest for the compose.  Uses repo group metadata to translate groups.
# (default groups for the configured repos are added by --default)
%packages
@base
@core

# pungi is an inclusive depsolver so that multiple packages are brought 
# in to satisify dependencies and we don't always want that. So we  use
# an exclusion list to cut out things we don't want
-kernel*debug*

# Things needed for installation
@anaconda-tools
grubby
grub2

%end
