# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    tester_maps.sh                                     :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: iharile <iharile@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/08 21:45:37 by iharile           #+#    #+#              #
#    Updated: 2022/11/08 22:11:40 by iharile          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!bin/bash
EXEC='cub3D'
PATH1="maps_test/invalid/"
PATH2="maps_test/valid/"

GREEN="\033[0;32m"
BLUE="\033[0;34m"
RED="\033[0;31m"
END="\033[0;m"

echo -e "${BLUE}CHECK INVALID MAPS${END}"
for f in $PATH1/* ; do
	check=$(./cub3D  $f | wc -l)
	if [ $check -ge 1 ]
	then
		echo -e "${GREEN}Good ---> $f ${END}"
	else
		echo -e "${RED}false ---> $f ${END}"
	fi
done
echo -e "${BLUE}CHECK VALID MAPS${END}"
for f in $PATH2/* ; do
	check=$(./cub3D  $f | wc -l)
	if [ $check -lt 1 ]
	then
		echo -e "${GREEN}Good ---> $f ${END}"
	else
		echo -e "${RED}false ---> $f ${END}"
	fi
done