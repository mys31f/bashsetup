#!bin/bash
which ruby
	if [ $? != 0 ]
		if dmesg | grep Linux | grep -Fxq 'Ubuntu'; then
			sudo apt install ruby -y 
		if dmesg | grep Linux | grep -Fxq 'Solus'
			sudo eopkg install ruby -y
		if dmesg | grep Linux | grep -Fxq ''
	else
		echo "You can now run the script provided."
	fi
