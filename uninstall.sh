#!/bin/bash

## show messages in a message box 
# Usage: 4 parameters
#	show_message [0:exit;1:success] [messages] [height] [width]
show_message()
{
    whiptail --title "uninstall" --msgbox "$2" $3 $4
    if [ $1 -eq 0 ]
    then 
        exit 0
    fi
}

## write messages to the log file
# Usage: 2 parameters 
# 	write_log [message] [the log file]
write_log()
{
    echo $1 >> $2 2>&1    
}

## output the start time of the uninstallation to the log file
# Usage:
#	1.output the start time of the uninstallation to the log file 
uninstall_date()
{
    echo "[uninstall_date]" >> $log 2>&1
    echo date=$(date +%Y-%m-%d_%H:%M:%S) >> $log 2>&1 
}

## uninstall caliper 
# Usage:
#	1.move to setup.py directory:  cd /opt/Caliper/caliper/     
#	2.run setup.py:  sudo pip setup.py uninstall
#	3.rm bin: sudo rm -rf /usr/local/bin/caliper
uninstall_caliper()
{
    tmp_log="/tmp/caliper_tmp.log"
    setup_py="/opt/Caliper/caliper/setup.py"
    cd /opt/Caliper/caliper/
    if [ ! -d $setup_py ]
    then
#        sudo pip $setup_py uninstall > $tmp_log 2>&1
        sudo pip $setup_py uninstall 
        echo "uninstall_caliper=ok" >> $log 2>&1
    fi
    cd - >> $tmp_log 2>&1
    sudo rm -rf /usr/local/bin/caliper
}

## uninstall pip new packages
# Usage:
#	1.get pip dependent new packages 
#       2.uninstall each pip dependent package
uninstall_pip()
{
    tmp_log="/tmp/caliper_tmp.log"
    packs=`cat /opt/Caliper/install*.log | grep "pip new" | uniq | sed 's/=.*$//'`
    for pack in $packs
    do
        for((num=1;num<=3;num++))
        do
            sudo pip uninstall $pack -y
#            sudo pip uninstall $pack -y > $tmp_log 2>&1
            if [ $? -ne 0 ]
            then
                if [ $num -eq 3 ]
                then
                    echo "$pack=not uninstall" >> $log 2>&1
                fi
                continue
            else
                echo "$pack=uninstall" >> $log 2>&1
                break
            fi
        done
    done
}

## uninstall dpk new packages
# Usage:
#	1.get dpk dependent new packages 
#       2.uninstall each dpk dependent package
uninstall_dpk()
{
    tmp_log="/tmp/caliper_tmp.log"
    if [ $system_os = "ubuntu" ]
    then
        packs=`cat /opt/Caliper/install*.log | grep "apt new" | uniq | sed 's/=.*$//'`
        for pack in $packs
        do
            for((num=1;num<=3;num++))
            do
                sudo apt autoremove $pack -y 
#                sudo apt autoremove $pack -y > $tmp_log 2>&1
                if [ $? -ne 0 ]
                then
                    if [ $num -eq 3 ]
                    then
                        echo "$pack=not uninstall" >> $log 2>&1
                    fi   
                    continue
                else
                    echo "$pack=uninstall" >> $log 2>&1
                    break
                fi
            done
        done
    else
        packs=`cat /opt/Caliper/install*.log | grep "yum new" | uniq | sed 's/=.*$//'`
        for pack in $packs
        do
            for((num=1;num<=3;num++))
            do
                sudo yum autoremove $pack -y > $tmp_log 2>&1
                if [ $? -ne 0 ]
                then
                    if [ $num -eq 3 ]
                    then
                        echo "$pack=not uninstall" >> $log 2>&1
                    fi
                    continue
                else
                    echo "$pack=uninstall" >> $log 2>&1
                    break
                fi
            done
        done
    fi
}
 
# Usage:
#  	1. checkout user
#	2. create log file
#	3. read the installation log file
#	4. show uninstall date
#	5. show uninstall caliper
#	6. show uninstall pip
#	7. show uninstall dpk 
#       8. choose remove ~/caliper_output and /opt/Caliper
{

## 1

#    user=`whoami`
#    if [ "$user" = "root" ]
#    then
#        show_message 0 "   Please run this program as normal user." 7 48
#    fi

## 2

    system_os=`cat /etc/os-release | grep -owP 'ID=\K\S+' | sed 's/"//g'`
    log="/tmp/caliper_uninstall_$(date +%Y-%m-%d_%H-%M-%S).log"
    echo $log
    if [ ! -f $log ]
    then 
        touch $log
    fi
    sudo chown $user:$user $log
    
## 3 

    flag=`cat /opt/Caliper/install*.log | grep -c "caliper=ok"`
    if [ $flag -eq 0 ]
    then
        show_message 0 "    checking install log fail then exit ..." 7 50 
    fi 
 
## 4

    uninstall_date

## 5
    echo "[uninstall_caliper]" >> $log 2>&1
    uninstall_caliper    

## 6
    
    echo "[uninstall_pip]" >> $log 2>&1
    uninstall_pip 
    flag=`grep -c "not" $log`
    if [ $flag -ne 0 ]
    then
        show_message 0 "checking uninstall pip fail then exit ..." 7 50 
    fi

## 7

    echo "[uninstall_dpk]" >> $log 2>&1
    uninstall_dpk
    flag=`grep -c "not" $log`
    if [ $flag -ne 0 ]
    then
        show_message 0 "checking uninstall dpk fail then exit ..." 7 50 
    fi

## 8

    whiptail --yesno "Please choose remove ~/caliper_output and /opt/Caliper" 7 58
    choose_status=$?
    if [ $choose_status -eq 0 ]
    then
        rm -rf ~/caliper_output
        sudo rm -rf /opt/Caliper
    fi
    show_message 1 "uninstall caliper success then exit ..." 7 50  
    exit 0
}

main
