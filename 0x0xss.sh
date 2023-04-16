#!/usr/bin/bash

  #Purple='\033[0;35m'
# Regular Colors
Black='\033[0;30m'      # Black
Red='\033[0;31m'        # Red
Green='\033[0;32m'      # Green
Yellow='\033[0;33m'     # Yellow
Blue='\033[0;34m'       # Blue
Purple='\033[0;35m'     # Purple
Cyan='\033[0;36m'       # Cyan
White='\033[0;97m'      # White
Blink='\033[5m'         # Blink
Color_Off='\033[0m'     # Text Reset

# Additional colors
LGray='\033[0;90m'      # Ligth Gray
LRed='\033[0;91m'       # Ligth Red
LGreen='\033[0;92m'     # Ligth Green
LYellow='\033[0;93m'    # Ligth Yellow
LBlue='\033[0;94m'      # Ligth Blue
LPurple='\033[0;95m'    # Light Purple
LCyan='\033[0;96m'      # Ligth Cyan

# Bold
BBlack='\033[1;30m'     # Black
BGray='\033[1;37m'		# Gray
BRed='\033[1;31m'       # Red
BGreen='\033[1;32m'     # Green
BYellow='\033[1;33m'    # Yellow
BBlue='\033[1;34m'      # Blue
BPurple='\033[1;35m'    # Purple
BCyan='\033[1;36m'      # Cyan
BWhite='\033[1;37m'     # White

# Italics
IBlack='\033[3;30m'     # Black
IGray='\033[3;90m'      # Gray
IRed='\033[3;31m'       # Red
IGreen='\033[3;32m'     # Green

IYellow='\033[3;33m'    # Yellow
IBlue='\033[3;34m'      # Blue
IPurple='\033[3;35m'    # Purple
ICyan='\033[3;36m'      # Cyan
IWhite='\033[3;37m'     # White

# Underline
UBlack='\033[4;30m'     # Black
UGray='\033[4;37m'		# Gray
URed='\033[4;31m'       # Red
UGreen='\033[4;32m'     # Green
UYellow='\033[4;33m'    # Yellow
UBlue='\033[4;34m'      # Blue
UPurple='\033[4;35m'    # Purple
UCyan='\033[4;36m'      # Cyan
UWhite='\033[4;37m'     # White

# Background
On_Black='\033[40m'     # Black
On_Red='\033[41m'       # Red
On_Green='\033[42m'     # Green
On_Yellow='\033[43m'    # Yellow
On_Blue='\033[44m'      # Blue
On_Purple='\033[45m'    # Purple
On_Cyan='\033[46m'      # Cyan
On_White='\033[47m'     # White

    echo -e "\n${BRed}"
    echo -e "\t     ██████  ██   ██  ██████  ██   ██ ███████ ███████"
    echo -e "\t    ██  ████  ██ ██  ██  ████  ██ ██  ██      ██     "
    echo -e "\t   ██ ██ ██   ███   ██ ██ ██   ███   ███████ ███████ "
    echo -e "\t   ████  ██  ██ ██  ████  ██  ██ ██       ██      ██ ${IPurple} $BY${Color_Off}"
    echo -e "\t    ██████  ██   ██  ██████  ██   ██ ███████ ███████ ${Color_Off}"
    echo -e "\t                                                     "
    echo -e "\t${On_Red}${BWhite}[!!]  0x0xss tool V1.0  [!!]${Color_Off}" 
    echo -e "\t${On_Red}${BWhite}[!!] Twitter: 0X0SAMA   [!!]${Color_Off}" 


echo "URL : "
read url

echo "payload : "
read payload 

printf "  "
sleep 2 

if curl -s -A "$payload" "$url" | grep -q "$payload "; then
 
  echo -n "${BGray}XSS payload detected in response"
  
else

  echo -n "${BRed}XSS payload not detected in response"
  
fi


