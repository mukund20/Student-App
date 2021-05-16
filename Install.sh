### Global Variables
LOG=/tmp/student.log
rm -f $LOG

### Functions

Head() {
    echo -e "\n\t\t\t\e[1;4;35m $1 \e[0m\n"
}

print() {
    echo -e "  $1 \t\t "
}

STAT_CHECK() {
if [ $1 -eq 0 ]; then 
    echo  " - SUCCESS"
else
    echo " - FAILURE"
    exit 1
fi

}

## Main Program
USER_ID = $(id -u)
if [ $USER_ID-nq 0 ]; then 
    echo- -e " You Should be root user to proceed!!"
    exit 1
fi

Head "WEB SERVER SETUP"
print "INSTALL WEB SERVER"
yum install nginx -y &>>$LOG
STAT_CHECK $?

