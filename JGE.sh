#! /bin/bash
clear
printf '\033]2;INSTALLER\a'
echo -e "Press \e[1;37m any key\e[1;37m to install the script..."
read -n 1
clear
apt-get -y install gnome-terminal             
clear
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
if [[ "$DIR" != "/root/JustGotEasy" ]]
then
	echo -e "You didn't follow the github's simple install instructions.I will try to do it for you..."
	sleep 4
	if [[ -d /root/JustGotEasy ]]
	then
		rm -r /root/JustGotEasy
	fi
	mkdir /root/JustGotEasy
	cp -r "$DIR"/* /root/JustGotEasy
	chmod +x /root/JustGotEasy/JGE.sh
	gnome-terminal -- "bash /root/JustGotEasy/JGE.sh"
fi
echo -e "Installing JustGotEasy..."
sleep 1
echo -e "Fixing permissions"
sleep 2
chmod +x /root/JustGotEasy/Jh1
chmod +x /root/JustGotEasy/Jh2
chmod +x /root/JustGotEasy/Jh3
chmod +x /root/JustGotEasy/Jh31
chmod +x /root/JustgotEasy/J
chmod +x /root/JustGotEasy/Jh4
chmod +x /root/JustGotEasy/Jh41
chmod +x /root/JustGotEasy/Jh21
chmod +x /root/JustGotEasy/Jh42
chmod +x /root/JustGotEasy/Jh43
chmod +x /root/JustGotEasy/JGE/J131.sh
chmod +x /root/JustGotEasy/JGE/J132.sh
chmod +x /root/JustGotEasy/JGE/J133.sh
chmod +x /root/JustGotEasy/uninstall.sh
clear
echo -e "Copying script to /bin/JustGotEasy"
sleep 1
mkdir /bin/JustGotEasy
cd /root/JustGotEasy
cp /root/JustGotEasy/J /bin/JustGotEasy
cp /root/JustGotEasy/Jh1 /bin/JustGotEasy
cp /root/JustGotEasy/Jh2 /bin/JustGotEasy
cp /root/JustGotEasy/Jh3 /bin/JustGotEasy
cp /root/JustGotEasy/Jh31 /bin/JustGotEasy
cp /root/JustGotEasy/Jh4 /bin/JustGotEasy
cp /root/JustGotEasy/Jh41 /bin/JustGotEasy
cp /root/JustGotEasy/Jh21 /bin/JustGotEasy
cp /root/JustGotEasy/Jh42 /bin/JustGotEasy
cp /root/JustGotEasy/Jh43 /bin/JustGotEasy
clear
#required for gui
apt-get -y install ncurses-dev
clear
if [[ ! -d /root/handshakes ]]
then
	mkdir /root/handshakes
	echo -e "Made /root/handshake directory"
else
	echo -e "/root/handshakes directory detected.Good."
fi
if [[ ! -d /root/wordlists ]]
then
	mkdir /root/wordlists
	echo -e "Made /root/wordlists directory"
else
	echo -e "/root/wordlists directory detected.Good."
fi
while true
do
clear
echo -e "Are you \e[1;33mu\e[0mpdating or \e[1;33mi\e[0mnstalling the script?(\e[1;33mu\e[0m/\e[1;33mi\e[0m): "
echo -e "Only use 'i' for the first time."
read UORI
if [[ "$UORI" = "u" ]]
then 
	clear
	echo -e "Type 'changelog' to see what's new on this version"
	sleep 3
	break
elif [[ "$UORI" = "i" ]]
then
	clear
	BASHCHECK=$(cat ~/.bashrc | grep "bin/JustGotEasy")
	if [[ "$BASHCHECK" != "" ]]
	then
		echo -e "I SAID USE i ONLY ONE TIME..........."
		sleep 3
	fi
	echo -e "Adding JustGotEasy to PATH so you can access it from anywhere"
	sleep 1
	export PATH=/bin/JustGotEasy:$PATH
	sleep 1
	echo "export PATH=/bin/JustGotEasy:$PATH" >> ~/.bashrc
	sleep 1
	clear
	break
fi
done
clear
echo -e "DONE"
sleep 1
clear
echo -e "Open a NEW terminal and type 'J' to launch the script"
sleep  4
gnome-terminal -- J
exit
