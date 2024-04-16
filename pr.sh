git branch -D pr
git push fork --delete pr
git checkout -b pr
echo "change" > change
git add .
git commit -sm change
git push -u fork pr
open -a "Google Chrome" https://github.com/NikitaSkrynnik/cmd-nse-vlan-vpp/pull/new/pr