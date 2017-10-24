# Set hostname to the current hostname
hostname=`hostname`

# Set /etc/hosts to a proper hostfile with the hostname of the current instance added as an alias to localhost
cat<<EOF > /etc/hosts
127.0.0.1 localhost $hostname

# The following lines are desirable for IPv6 capable hosts
::1 ip6-localhost ip6-loopback
fe00::0 ip6-localnet
ff00::0 ip6-mcastprefix
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters
ff02::3 ip6-allhosts
EOF
