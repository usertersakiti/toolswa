#!/usr/bin/bash
#tools sederhana
#link WhatsApp Creator 
#by Holilul Anwar
clear


f=9
for var in f ; do
	for col in {1..7} ; do
		printf -v $var$col %b "\x1b[${!var}${col}m"
	done
done	

b='\e[1;94m'
g='\e[1;92m'
y='\e[1;93m'
m='\e[1;95m'
c='\e[1;96m'
r='\e[1;91m'
w='\e[1;97m'
n='\e[0m'
banner(){
	echo -e  ${b}"║${g}██████████${b}╚╗  ${b}Version    :${r}1.0"
	echo -e  ${b}"║${g}██${r}╔══╗${g}█${r}╔═╗${g}█${b}║  ${r}Link Whats${b}App Creator"
	echo -e  ${b}"║${g}██${r}║╬╔╝${g}█${r}╚╗║${g}█${b}║  ${g}Code by :${r}Holilul ${w}Anwar"
	echo -e  ${b}"║${g}██${r}╚═╝${g}█${r}║${g}█${r}╚╝${g}█${b}║   ${r}\e[7mBlack Co\e[7m${w}der Crush${n}"
	echo -e  ${b}"╚╗${g}█████████${b}═╝  ${g}Contack   : ${w}082175915487"
	echo -e  ${b}"  ╚╗${b}║${r}╠╩╩╩╩╩╝   ${r}Suport by  : ${w}Akin(4k17)"
	echo -e  ${b}"  ║║${g}┈┈┈█${b}▐█████▒${r}.｡oO"
	echo -e  ${b}"  ║${g}██${r}╠╦╦╦╗"
	echo -e  ${b}"  ╚╗${g}██████"
	echo -e  ${b}"   ╚════╝"
}
sleep 1
printf "\n\n"
menu(){
	echo -e "${r}<━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━>${n}"
	echo -e "${c}│${b}1.${r}Link Creator Api WhatsApp${c}   │${n}"
	echo -e "${c}│${b}2.${r}Link Creator wa.me ${c}         │${n}"
	echo -e "${c}│${b}0.${r}Exit                        ${c}│${n}"
	echo -e "${r}<━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━>${n}"
}	
input(){
	local message="${1}"
	local var_name="${2}"
	declare -a randCo
	randCo=( "${r}" "${g}" "${y}" "${b}" "${w}")
	echo -e "  ${b}╭──${c}[${randCo[$( shuf -n 1 -i 0-4 )]}${message}${c}]>${n}"
	echo -ne "  ${b}╰───────${r}root\e[1;90m@${g}mr.devil${b}=•>"
	read input
	eval $var_name="\"${input}\""
}
banner
menu
printf "\n"
input "Masukan pilihan anda" choice
printf "\n\n"
info(){
	echo -e "  ${c}[${w}?${c}] ${w}${1}${n}"
}
success(){
	echo -e "  ${g}[${w}+${g}] ${w}${1}${n}"
}
danger(){
	echo -e "${b}[${r}-${b}] ${w}${1}${n}"
}
if [[ $choice = 1 ]] || [[ $choice = 01 ]]; then
	printf "%s[%s*%s] %sMasukan Nomor %s: %s" ${f2} ${f7} ${f2} ${f7} ${f5} ${f6}
	read nomor
	nomor=$(echo $nomor | sed 's/^0/62/g')
	printf "%s[%s*%s] %sMasukan Text %s: %s" ${f2} ${f7} ${f2} ${f7} ${f5} ${f6}
	read text
	text=$(echo $text | tr [[:space:]] '+' | sed 's/+$//g')
	link="https://api.whatsapp.com/send?phone=$nomor&text=$text"
	printf "\n"
	printf "%s[%s*%s] %sLink %s:%s %s" ${f4} ${f2} ${f4} ${f6} ${f5} ${f7} "$link"
	printf "\n\n"
	printf "%s[%s*%s] %sMau Langsung Kirim ? %s[%sY%s/%sn%s] %s:%s " ${f4} ${f2} ${f4} ${f6} ${f2} ${f4} ${f7} ${f3} ${f2} ${f5} ${f7}
	read -rn1 kirim
	case $kirim in
		[Yy])
			termux-open-url "$link"; exit 0 ;;
		[Nn])
			printf "%s[%s#%s] %sBye :* " ${f2} ${f3} ${f2} ${f2}; exit 0 ;;
		*)
			printf "%s[%s#%s] %sBye :* " ${f2} ${f3} ${f2} ${f2}; exit 0 ;;
	esac
elif [[ $choice = 2 ]] || [[ $choice = 02 ]]; then
		printf "%s[%s*%s] %sMasukan Nomor %s: %s" ${f2} ${f7} ${f2} ${f7} ${f5} ${f6}
	read nomor
	nomor=$(echo $nomor | sed 's/^0/62/g')
	printf "%s[%s*%s] %sMasukan Text %s: %s" ${f2} ${f7} ${f2} ${f7} ${f5} ${f6}
	read text
	text=$(echo $text | tr [[:space:]] '+' | sed 's/+$//g')
	link="https://wa.me/send?phone=$nomor&text=$text"
	printf "\n"
	printf "%s[%s*%s] %sLink %s:%s %s" ${f4} ${f2} ${f4} ${f6} ${f5} ${f7} "$link"
	printf "\n\n"
	printf "%s[%s*%s] %sMau Langsung Kirim ? %s[%sY%s/%sn%s] %s:%s " ${f4} ${f2} ${f4} ${f6} ${f2} ${f4} ${f7} ${f3} ${f2} ${f5} ${f7}
	read -rn1 kirim
	case $kirim in
		[Yy])
			termux-open-url "$link"; exit 0 ;;
		[Nn])
			printf "%s[%s#%s] %sBye :* " ${f2} ${f3} ${f2} ${f2}; exit 0 ;;
		*)
			printf "%s[%s#%s] %sBye :* " ${f2} ${f3} ${f2} ${f2}; exit 0 ;;
	esac
elif [[ $choice = 0 ]] || [[ $choice = 00 ]]; then
	info "Thanks to for using my tools:)"
	sleep 1
	success "HOLILUL ANWAR" | pv -qL 8
	exit
fi