### Global Variables
LOG=/tmp/student.log
rm -f $LOG

### Functions

Head() {
    echo -e "\n\t\t\t\e[35m $1 \e[0m\n"
}


echo "WEB SERVER SETUP"
echo -n "INSTALL WEB SERVER"

yum install nginx -y &>>$LOG

if [ $? -eq 0 ]; then 
    echo  " - SUCCESS"
else
    echo " - FAILURE"
    exit 1
fi

