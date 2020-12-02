#!/bin/bash
####################################
#
# backup terraria tshock.sqlite (ssc data)
#
####################################

 #get froggo timezone
EDMONTON=$(TZ=MST date +"%b%d%Y-%H%M%S") 
#get yuki timezone
SINGAPORE=$(TZ=Singapore date +"%b%d%Y-%H%M%S")
# where to store sscdata backup
DESTINATION='/home/ASUS/cutiehq-terraria/backups/' 
# naming mechanic
FILENAME=/tshockdb-CA-$EDMONTON-PH-$SINGAPORE.tar.gz 
# appending destination and filename
LOCATION=$DESTINATION$FILENAME 
# source folder for shared ssc data
SOURCEFOLDER='/home/ASUS/cutiehq-terraria/shared/sscdata/tshock.sqlite' 
# archive the backup and store
tar -cpzf $LOCATION $SOURCEFOLDER 
# upload unpackaged ssc data to discord
bash /home/ASUS/discord.sh/discord.sh --file $SOURCEFOLDER --text "**Successful Tshock Database back up - includes Player Data / Command Permissions**"


# source folder for 7777 world
SOURCEFOLDER2='/home/ASUS/cutiehq-terraria/server-qt-01/terraria_data/Worlds/cutiehq_baby_edition.wld'
# where to store world data backup
DESTINATION2='/home/ASUS/cutiehq-terraria/backups/worlds'
# naming mechanic
FILENAME2=world7777-CA-$EDMONTON-PH-$SINGAPORE.tar.gz
# appending destination and filename
LOCATION2=$DESTINATION2$FILENAME2
# archive the backup and store
tar -cpzf $LOCATION2 $SOURCEFOLDER2 
# upload unpackaged world data to discord
bash /home/terraria-yuki/discord.sh/discord.sh --file $SOURCEFOLDER2 --text "**Succesful Port 7777 World back up**"

# source folder for 6969 world
SOURCEFOLDER2='/home/ASUS/cutiehq-terraria/server-qt-01/terraria_data/Worlds/cutiehq_baby_edition.wld'
# where to store world data backup
DESTINATION2='/home/ASUS/cutiehq-terraria/backups/worlds'
# naming mechanic
FILENAME2=world7777-CA-$EDMONTON-PH-$SINGAPORE.tar.gz
# appending destination and filename
LOCATION2=$DESTINATION2$FILENAME2
# archive the backup and store
tar -cpzf $LOCATION2 $SOURCEFOLDER2 
# upload unpackaged world data to discord
bash /home/terraria-yuki/discord.sh/discord.sh --file $SOURCEFOLDER2 --text "**Succesful Port 6969 World back up**"
