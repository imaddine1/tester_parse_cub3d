#!bin/bash
EXEC='cub3D'
PATH1="invalid/"
PATH2="valid/"

GREEN="\033[0;32m"
BLUE="\033[0;34m"
RED="\033[0;31m"
END="\033[0;m"

echo -e "${BLUE}CHECK INVALID MAPS${END}"
for f in $PATH1/* ; do
    check=$(./cub3D  $f | wc -l)
    if [ $check -ge 1 ]
    then
        echo -e "$f......${GREEN}OK${END}"
    else
        echo -e "$f......${RED}KO${END}"
    fi
done
echo -e "${BLUE}CHECK VALID MAPS${END}"
for f in $PATH2/* ; do
    check=$(./cub3D  $f | wc -l)
    if [ $check -lt 1 ]
    then
        echo -e "$f......${GREEN}OK${END}"
    else
        echo -e "$f......${RED}KO${END}"
    fi
done
