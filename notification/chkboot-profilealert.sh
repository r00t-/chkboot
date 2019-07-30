# chkboot-profilealert.sh: copy to /etc/profile.d/chkboot-profilealert.sh
#
# author: ju (ju at heisec dot de)
# contributors: inhies, prurigro
#
# license: GPLv2

# only try to display chkboot changes if the 'proofile' alert style has been selected
if grep "^CHKBOOT_STYLES=.*profile" /etc/default/chkboot.conf >/dev/null ; then
    # run whatever issues exist then return the response
    chkboot-check
    return "$?"
fi
