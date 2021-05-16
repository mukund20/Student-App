
LOG= /tmp/student.log
rm -f $LOG

echo "WEB SERVER SETUP"
echo "INSTALL WEB SERVER"

yum intall nginx -y &>>$LOG

if [ $? -eq 0 ]; then 
    echo " - SUCCESS"
else
    echo " - FAILURE"
    exit 1
fi


ffyhmjmfmjgmjg