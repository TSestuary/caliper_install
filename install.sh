#!/bin/bash
## How to build caliper.install:
# tar cvzf caliper-[ver].tar.gz Caliper 
# cat caliper.install caliper-[ver].tar.gz > caliper-[ver].install
ARCHIVE=`awk '/^__ARCHIVE_BELOW__/ {print NR+1; exit 0}' "$0"`
#. /tmp/Caliper/environment.config
## show messages in a message box 
# Usage: 4 parameters
#	show_message [0:exit;1:success] [messages] [height] [width]
show_message()
{
    whiptail --title "install" --msgbox "$2" $3 $4
    if [ $1 -eq 0 ]
    then 
        exit 0
    fi
}

## show progress bar in box
# Usage: 8 parameters
# 	show_progress [function of run] [the percentage of start] [the percentage of end] [the speed of progress] [message] [height] [width] [percent]
show_progress()
{
    {
    	j=`expr $3 - 1`
    	for ((i=$2; i<=$3; i++))
    	do
            sleep $4
            echo $i
            if [[ $i -eq $j ]]
            then 
                $1
            fi
        done
    } | whiptail --title "install" --gauge "$5" $6 $7 $8    
}    

## write messages to the log file
# Usage: 2 parameters 
# 	write_log [message] [the log file]
write_log()
{
    echo $1 >> $2 2>&1    
}


## check the software information
# Usage:
#       1.find and save the system operating system and version
#       2.get the operating system and version in the config file
#       3.contrast the two information in turn, if information is the same, output informarion to the log file
check_softinfo()
{
    system_os=`cat /etc/os-release | grep -owP 'ID=\K\S+' | sed 's/"//g'`
    system_os_version=`cat /etc/os-release | grep -owP 'VERSION_ID=\K\S+' | sed 's/"//g'`
    configs_os=`echo $os | sed 's/,/\ /g'`
    configs_ubuntu_version=`echo $ubuntu_version | sed 's/,/\ /g'`
    configs_centos_version=`echo $centos_version | sed 's/,/\ /g'`
    configs_readhat_version=`echo $redhat_version | sed 's/,/\ /g'`
    configs_sles_version=`echo $sles_version | sed 's/,/\ /g'`
    for config_os in ${configs_os}
    do
        if [ $system_os = $config_os ]
        then
            write_log "[system_information]" $log
            write_log "os=$system_os" $log 
            case $system_os in
                ubuntu) 
            for config_ubuntu_version in ${configs_ubuntu_version}
            do
                if [ $system_os_version = $config_ubuntu_version ]
                then
                    write_log "os_version=$system_os_version" $log
                    break
                fi
	    done
            ;;
                centos)
            for config_centos_version in ${configs_centos_version}
            do
                if [ $system_os_version = $config_centos_version ]
                then
                    write_log "os_version=$system_os_version" $log
                    break
                fi
	    done
            ;;
                redhat)
            for config_redhat_version in ${configs_redhat_version}
            do
                if [ $system_os_version = $config_redhat_version ]
                then
                    write_log "os_version=$system_os_version" $log
                    break
                fi
	    done
            ;;
                sles)
            for config_sles_version in ${configs_sles_version}
            do
                if [ $system_os_version = $config_sles_version ]
                then
                    write_log "os_version=$system_os_version" $log
                    break
                fi
	    done
            ;;
            esac 
        fi
    done 
}

## check the hardware information
# Usage:
#       1.find and save the system arch and processor manufacturer and processor version
#       2.find the above information in the configuration file,if information is the same, print informarion to the log file
check_hardinfo()
{
    system_arch=`uname -m`
    system_processor_manufacturer=`sudo dmidecode --string processor-manufacturer`
    system_processor_version=`sudo dmidecode --string processor-version`
    configs_arch=`echo $arch | sed 's/,/\ /g'`
    for config_arch in ${configs_arch}
    do
        if [ $system_arch = $config_arch ]
        then
            write_log "arch=$system_arch" $log 
            case $system_arch in
                x86_64)
            ret=`grep "$system_processor_manufacturer" /tmp/Caliper/environment.config | wc -l`
            if [ $ret -ne 0 ]
            then
                write_log "x86_64_processor_manfacturer=$system_processor_manufacturer" $log
                ret=`grep "$system_processor_version" /tmp/Caliper/environment.config | wc -l`
                if [ $ret -ne 0 ]
                then
                    write_log "x86_64_processor_version=$system_processor_version" $log
                fi
            fi
            ;;
                aarch64)
            ret=`grep "$system_processor_manufacturer" /tmp/Caliper/environment.config | wc -l`
            if [ $ret -ne 0 ]
            then
                write_log "aarch64_processor_manfacturer=$system_processor_manufacturer" $log
                ret=`grep "$system_processor_version" /tmp/Caliper/environment.config | wc -l`
                if [ $ret -ne 0 ]
                then
                    write_log "aarch64_processor_version=$system_processor_version" $log
                fi
            fi
            ;;
            esac 
        fi
    done     
}

## check the net information
# Usage:
#       1.find and save website information
#       2.use the ping command to check the network and output the result to the log file
check_net()
{
    network_log="/tmp/network.log"
    ping -c 3 $network > $network_log 2>&1
    ping_status=`grep "unknown" $network_log | wc -l`
    if [ $ping_status -eq 1 ]
    then 
        write_log "network=error" $log
    else 
        write_log "network=ok" $log
    fi
}


## comparison of two version numbers,new version number is higher than old version number 
# Usage: 2 parameters
#       verion_gt [new version number] [old version number] 
version_gt() 
{ 
    test "$(echo "$@" | tr " " "\n" | sort -V | head -n 1)" != "$1"
}

## comparison of two version numbers
# Usage: 
#    	1. is it exist /opt/Caliper: if not, then install, otherwise compare versions
#	2. compare versions: get the old version number, the new version higher than the old version to upgrade, otherwise then install
#	3. flag [1:install;2:update]
check_version()
{
    if [ -d  "/opt/Caliper" ]
    then 
        old_version=`cat /opt/Caliper/caliper/common.py | grep -owP "VERSION=\K\S+" | sed 's/\"//g'`
        if version_gt $new_version $old_version
        then 
            flag=2
        fi
    fi
}

## output the start time of the installation to the log file
# Usage:
#	1.output the start time of the installation to the log file        
install_date()
{
    echo "[install_date]" >> $log 2>&1
    echo date=$(date +%Y-%m-%d_%H:%M:%S) >> $log 2>&1
}

## install each dpk package
# Usage: 1 parameters
#	install_every_dpk [package name]
#       1.depending to different operating system ,install package
#       2.check the package installation status
#       3.update source,install dependent package
install_every_dpk()
{
    UPDATE=0
    tmp_log="/tmp/caliper_tmp.log"
    if [ $system_os = "ubuntu" ]
    then
        dpkg-query -W -f='${Status}' $1 > $tmp_log 2>&1
        check=`grep -c "ok installed" $tmp_log`
        if [ $check -eq 0 ]
        then
            if [ $UPDATE -eq 0 ]
            then
                UPDATE=1
                sudo apt-get update > $tmp_log 2>&1
            fi
            nums="1 2 3"
            for num in ${nums}
            do
                sudo apt install $1 -y > $tmp_log 2>&1
                if [ $? -ne 0 ]
                then
                    if [ $num -eq 3 ]
                    then
                        echo "$1=not apt install" >> $log 2>&1
                    fi
                    continue
                else
                    echo "$1=apt new install" >> $log 2>&1
                    break
                fi
           done
        else
            echo "$1=apt install" >> $log 2>&1
        fi 
    else
        check=`rpm -qa $1`
        if [ -z $check ]
        then
            if [ $UPDATE -eq 0 ]
            then
                UPDATE=1
                sudo yum update > $tmp_log 2>&1
            fi
            nums="1 2 3"
            for num in ${nums}
            do
                sudo yum install $1 -y > $tmp 2>&1
                if [ $? -ne 0 ]
                then
                    if [ $num -eq 3 ]
                    then
                        echo "$1=not yum install" >> $log 2>&1
                    fi
                    continue
                else
                    echo "$1=yum new install" >> $log 2>&1
                    break
                fi
           done
        else
            echo "$1=yum install" >> $log 2>&1
        fi 
    fi
}


## install jq package
install_jq()
{
   install_every_dpk jq
}

## install dpk packages
# Usage:
#	1.get dpk dependent packages for different operating systems
#	2.init the dpk dependent package number
#	3.init the percentage of the beginning, the percentage of the end, the percentage of the increase
#       4.install each dpk dependent package
install_dpk()
{
    case $system_os in
        ubuntu)
    packs=`jq .ubuntu_dpk_package[].platform $depend_json | sed 's/\"//g'`
    ;;
        centos)
    packs=`jq .centos_dpk_package[].platform $depend_json | sed 's/\"//g'`
    ;;
        redhat)
    packs=`jq .redhat_dpk_package[].platform $depend_json | sed 's/\"//g'`
    ;;
        sles)
    packs=`jq .sles_dpk_package[].platform $depend_json | sed 's/\"//g'`
    ;;
    esac
    count=`echo $packs | awk '{print NF}'`
    if [ $flag -eq 1 ]
    then
        start=15
    else
        start=10
    fi
    end=60
    rate=`echo "scale=2;($end-$start)/$count" | bc`
    percent=$start
    percent_int=$start
    i=0
    for pack in ${packs}
    do
        percent=`echo "$start+$rate*$i" | bc`
        percent_int=`echo $percent | awk -F'.' '{print $1}'`
        if [ $percent_int -gt $end ]
        then
            percent_int=$end
        fi
        {
            install_every_dpk $pack
        } | whiptail --title "install" --gauge "$pack" 6 55 $percent_int
        i=`expr $i + 1`
    done
}

## install each pip package
# Usage: 1 parameters
#	install_every_pip [package name]
#       1.check the package installation status
#       2.install pip dependent package
install_every_pip()
{
    tmp_log="/tmp/caliper_tmp.log"
    packss=$1
    pack=${packss%==*}
    pip show $pack > $tmp_log 2>&1
    check=`grep -c $pack $tmp_log`
    if [ $check -eq 0 ]
    then
        nums="1 2 3"
        for num in ${nums}
        do
            sudo LC_ALL=C pip install $packss > $tmp_log 2>&1
            if [ $? -ne 0 ]
            then
                if [ $num -eq 3 ]
                then
                    echo "$pack=not pip install" >> $log 2>&1
                fi
                continue
            else
                echo "$pack=pip new install" >> $log 2>&1
                break
            fi
        done
    else
        echo "$pack=pip install" >> $log 2>&1
    fi 
}

## install pip packages
# Usage:
#	1.get pip dependent packages 
#	2.init the pip dependent package number
#	3.init the percentage of the beginning, the percentage of the end, the percentage of the increase
#       4.install each pip dependent package
install_pip()
{
    packs=`jq .pip_package[].platform $depend_json | sed 's/\"//g'`
    count=`echo $packs | awk '{print NF}'`
    start=60
    end=90
    rate=`echo "scale=2;($end-$start)/$count" | bc`
    percent=$start
    percent_int=$start
    i=0
    for pack in ${packs}
    do
        percent=`echo "$start+$rate*$i" | bc`
        percent_int=`echo $percent | awk -F'.' '{print $1}'`
        if [ $percent_int -gt $end ]
        then
            percent_int=$end
        fi
        {
            install_every_pip $pack
        } | whiptail --title "install" --gauge "$pack" 6 55 $percent_int
        i=`expr $i + 1`
    done
}

## install caliper 
# Usage:
#	1.move to setup.py directory:  cd /tmp/Caliper/caliper/     
#	2.run setup.py:  sudo python setup.py install
install_caliper()
{
    tmp_log="/tmp/caliper_tmp.log"
    cd /tmp/Caliper/caliper/
    setup_py="/tmp/Caliper/caliper/setup.py"
    sudo python $setup_py install > $tmp_log 2>&1
    echo "caliper=ok" >> $log 2>&1 
    cd - >> $tmp_log 2>&1
}

## main 
# Usage:
#  	1. checkout user
#	2. tar source code to /tmp
#	3. create log file
#	4. output the new version number to the log file 
#	5. checkout soft information and output information to the log file [0 3]
#	6. checkout hard information and output information to the log file [3 7]
#	7. checkout net information and output information to the log file [7 10]
#	8. checkout version
#       9. flag [ 1:install 2:update ]
#	10.[ 1:install ] show install jq [10 15]
#	11.[ 1:install ] show install date 
#	12.[ 1:install ] show install dpk [15 60]
#	13.[ 1:install ] show install pip [60 90]
#	14.[ 1:install ] show install caliper [90 100]
#	15.[ 1:install ] mv source code to /opt
#	16.[ 2:update ] show date
#	17.[ 2:update ] show install dpk [10 60]
#	18.[ 2:update ] show install pip [60 90]
#	19.[ 2:update ] show install pip [60 90]
#       20.[ 2:update ] copy history log file and rm source code in /tmp and mv spurce code to /opt
main()
{
## 1

    user=`whoami`
    if [ "$user" = "root" ]
    then
        show_message 0 "   Please run this program as normal user." 7 48
    fi

## 2

    tail -n+$ARCHIVE "$0" | tar xzm -C /tmp
    . /tmp/Caliper/environment.config

## 3
   
    depend_json="/tmp/Caliper/dependency.json" 
    system_os=`cat /etc/os-release | grep -owP 'ID=\K\S+' | sed 's/"//g'`
    log='/tmp/Caliper/install_'$(date +%Y-%m-%d_%H-%M-%S)'.log'
    echo $log
    if [ ! -f $log ]
    then 
        touch $log
    fi
    sudo chown $user:$user $log

## 4
    
    new_version=`cat /tmp/Caliper/caliper/common.py | grep -owP "VERSION=\K\S+" | sed 's/\"//g'`
    write_log "[caliper]" $log
    write_log "version=$new_version" $log 

## 5

    show_progress check_softinfo 0 3 0.1 "soft information" 6 58 0    
    flag=`grep -c "os_version" $log`
    if [ $flag -eq 0 ]
    then
        show_message 0 "checking soft information fail then exit ..." 7 50 
    fi 
 
## 6

    show_progress check_hardinfo 3 7 0.1 "hard information" 6 58 0    
    flag=`grep -c "processor_version=" $log`
    if [ $flag -eq 0 ]
    then
        show_message 0 "checking hard information fail then exit ..." 7 50 
    fi 

## 7

    show_progress check_net 7 10 0.1 "net information" 6 58 0    
    flag=`grep -c "network=error" $log`
    if [ $flag -ne 0 ]
    then
        show_message 0 "checking net information fail then exit ..." 7 50 
    fi
 
## 8

    flag=1
    check_version

## 9

    case $flag in

## 10

        1)
    echo "[install_jq]" >> $log 2>&1
    show_progress install_jq 10 15 0.1 "jq" 6 58 0    
    ret=`grep -c "jq=not" $log`
    if [ $ret -ne 0 ]
    then
        show_message 0 "install jq fail exit install" 7 45 
    fi

## 11

    install_date

## 12

    echo "[install_dpk]" >> $log 2>&1
    install_dpk
    ret=`grep -c "not" $log`
    if [ $ret -ne 0 ]
    then
        show_message 0 "install dpk fail exit install" 7 45 
    fi

## 13

    echo "[install_pip]" >> $log 2>&1
    install_pip
    ret=`grep -c "not" $log`
    if [ $ret -ne 0 ]
    then
        show_message 0 "install pip fail exit install" 7 45 
    fi

## 14

    echo "[install_caliper]" >> $log 2>&1
    show_progress install_caliper 90 100 0.1 "caliper" 6 58 0    
    show_message 1 "install caliper success exit install" 7 45 

## 15

    if [ ! -d "/opt/Caliper" ]
    then
        sudo mv /tmp/Caliper /opt
    else 
        sudo rm -rf /opt/Caliper
        sudo mv /tmp/Caliper /opt
    fi
    exit 0
    ;;

## 16
        2)
    install_date

## 17

    echo "[install_dpk]" >> $log 2>&1
    install_dpk
    ret=`grep -c "not" $log`
    if [ $ret -ne 0 ]
    then
        show_message 0 "update dpk fail exit update" 7 45 
    fi

## 18

    echo "[install_pip]" >> $log 2>&1
    install_pip
    ret=`grep -c "not" $log`
    if [ $ret -ne 0 ]
    then
        show_message 0 "update pip fail exit update" 7 45 
    fi

## 19

    echo "[install_caliper]" >> $log 2>&1
    show_progress install_caliper 90 100 0.1 "caliper" 6 58 0    
    show_message 1 "update caliper success exit update" 7 45 

## 20

    sudo cp /opt/Caliper/install*.log /tmp/Caliper/
    sudo rm -rf /opt/Caliper
    sudo mv /tmp/Caliper /opt/
    exit 0
    ;;
    esac
}

main
__ARCHIVE_BELOW__
