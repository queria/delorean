cat > /etc/yum.repos.d/rawhide.repo <<EOF
[rawhide]
name=Fedora Rawhide - \$basearch
failovermethod=priority
mirrorlist=https://mirrors.fedoraproject.org/metalink?repo=rawhide&arch=\$basearch
enabled=1
gpgcheck=0
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-fedora-\$basearch
metadata_expire=1d
EOF

curl http://trunk.rdoproject.org/f21/current/delorean.repo > /etc/yum.repos.d/trunk.repo

