!#/bin/bash

sudo sed -i -r -e "s/^((server|pool).*)/# \1         # commented by $(whoami) on $(date +"%Y-%m-%d @ %H:%M:%S")/" /etc/ntp.conf
echo -e "\npool pool.ntp.org iburst         # added by $(whoami) on $(date +"%Y-%m-%d @ %H:%M:%S")" | sudo tee -a /etc/ntp.conf

NTP (Network Time Protocol) is a protocol used to synchronize the clocks of computers
on a network. It allows computers to obtain accurate time information from a reference clock,
such as an atomic clock or GPS time server, and use that information to set the system clock 
on the local computer.

