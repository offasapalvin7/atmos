#! /bin/bash

set -e

cyan="\e[0;36m"
end="\e[0m"

# Banner
echo -e "$cyan
▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄   ▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ 
█      █       █  █▄█  █       █       █
█  ▄   █▄     ▄█       █   ▄   █  ▄▄▄▄▄█
█ █▄█  █ █   █ █       █  █ █  █ █▄▄▄▄▄ 
█      █ █   █ █       █  █▄█  █▄▄▄▄▄  █
█  ▄   █ █   █ █ ██▄██ █       █▄▄▄▄▄█ █
█▄█ █▄▄█ █▄▄▄█ █▄█   █▄█▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█
$end\n"
printf "By theinfosecguy.."

printf "Installing GF..\n"
go install github.com/tomnomnom/gf@latest
printf "Installing waybackurls ..\n"
go install github.com/tomnomnom/waybackurls@latest
printf "Installing Dalfox..\n"
go install github.com/hahwul/dalfox/v2@latest
printf "Installing gau..\n"
go install github.com/lc/gau@latest

printf "Setting up GF Patterns\n"
# Create directory for gf-patterns
mkdir ~/.gf
# Copy example gf patterns to gf directory
cp -r $GOPATH/src/github.com/tomnomnom/gf/examples ~/.gf
cd ~

#Install GF Patterns
git clone https://github.com/1ndianl33t/Gf-Patterns
mv ~/Gf-Patterns/*.json ~/.gf

printf "awsome now we going to automate the process."
