# shellscripts
# bash script that will detect the OS based & it will execute commands & setup website automatically
#!/bin/bash
SVC=httpd
WEBURL=https::;//www.tooplate.com/download/2104__-sloopa
PACKS='httpd wget unzip'

echo 
echo
echo "install packages"
yum install $PACKS -y
echo "#.............#"

echo
echo "starting &  enabling service"

read -p "Enter web url::" WEBURL


DIRNAME=$(echo $WEBURL | cut -d / -fs)

echo "Dir name is $DIRNAME"
 read -p "Enter Y to continue, E to enter dir name, N to stop:" USEDEC
 if [["$USEDEC" = "Y"]] || [["USRDEC"="y"]]
 then
 echo "#............................#"
 echo " starting websetup"
 echo "#...........................#"
 elif [[ "$USRDEC" = "E"]] || [["$USRDEC = "n"]]
then
read -p "ENTERV DIR NAME" DIRNAME
echo "#.......................................#"
echo  "starting websetup"
echo "#.......................#"


