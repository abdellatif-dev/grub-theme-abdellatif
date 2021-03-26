#!/bin/sh
txtred=$(tput setaf 1) # Red
txtgrn=$(tput setaf 2) # Green
txtylw=$(tput setaf 3) # Yellow
txtblu=$(tput setaf 4) # Blue
txtpur=$(tput setaf 5) # Purple
txtcyn=$(tput setaf 6) # Cyan
txtwht=$(tput setaf 7) # White
txtrst=$(tput sgr0) # Text reset.

echo ${txtgrn}installing grub theme-abdellatif ${txtrst}
echo "${txtcyn}by\033[1m abdellatif-dev${txtrst}"
echo "${txtblu}github =${txtgrn}\033[1m https://github.com/abdellatif-dev${txtrst}"
echo "${txtblu}twitter =${txtgrn}\033[1mhttps://twitter.com/DevAbdellatif${txtrst}"
echo "${txtblu}youtube =${txtgrn}\033[1mhttps://www.youtube.com/channel/UCsHub1wcuNlWtkGiVchRtzA${txtrst}"

sleep 1
echo "${txtylw}\033[1mconfiguring grub ${txtrst}"
cp grub /etc/default/grub
echo "cp grub /etc/default/grub"
echo "${txtylw}\033[1minstalling the theme${txtrst}"
echo "${txtpur}\033[1msudo cp grub-abdellatif/ /boot/grub/themes/ -r${txtrst}"
sudo cp grub-abdellatif/ /boot/grub/themes/ -rv
echo "${txtpur}\033[1msudo grub-mkconfig -o /boot/grub/grub.cfg${txtrst}"
sudo grub-mkconfig -o /boot/grub/grub.cfg
