#!/bin/bash

fqdn=$1
chef_environment=$2
run_list=$3
ssh_opts=$4

if [ -z "$run_list" ] ; then
	echo "Usage: $0 FQDN ENVIRONMENT RUNLIST [SSH-OPTS]"
	exit 1
fi

# Set FQDN on the host and remove /etc/chef directory if present
ssh root@$fqdn $ssh_opts "hostname $fqdn; echo $fqdn > /etc/hostname; rm -rf /etc/chef" || exit 1

# Delete previous node and client record(s)
knife node delete $fqdn
knife client delete $fqdn

# Bootstrap
knife bootstrap $fqdn -N $fqdn -E $chef_environment -x root $ssh_opts -r "$run_list" || exit 1

exit 0
