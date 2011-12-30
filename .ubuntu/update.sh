#!/bin/bash -eux

echo "APT::Install-recommends \"no\";" >/tmp/00no-install-recommends
install /tmp/00no-install-recommends /etc/apt/apt.conf.d/00no-install-recommends -m0644 -oroot -groot
rm /tmp/00no-install-recommends

apt-get update
apt-get -y upgrade
