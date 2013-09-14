#!/bin/bash

fqdn=$1
chef_environment=$2
run_list=$3

if [ -z "$run_list" ] ; then
	echo "Usage: $0 FQDN ENVIRONMENT RUNLIST"
	exit 1
fi

# Set FQDN on the host and remove /etc/chef directory if present
#ssh root@$fqdn "hostname $fqdn; echo $fqdn > /etc/hostname; rm -rf /etc/chef" || exit 2

# Delete previous node and client record(s)
#knife node delete $fqdn
#knife client delete $fqdn

# Bootstrap
echo knife bootstrap $fqdn -N $fqdn -E $chef_environment -x root -r "$run_list" 
knife bootstrap $fqdn -N $fqdn -E $chef_environment -x root -r "$run_list" || exit 3

exit 0
