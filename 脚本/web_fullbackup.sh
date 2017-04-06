#! /bin/sh
### Web Fullback up by Jeff###20161212#############

BackDir=/backup/web_backup
LogFile=/backup/web_backup/fullbak.log
Date=`date +%F-%H-%M`
Begin=`date +"%Y年%m月%d日 %H:%M:%S"`
cd $BackDir/www
tar -zcpf www-${Date}.tar.gz /web/www
Lasta=`date +"%Y年%m月%d日 %H:%M:%S"`
echo 开始:$Begin 结束:$Lasta www backup success >> $LogFile #记录备份日志
cd $BackDir/mall
tar -zcpf mall-${Date}.tar.gz /web/wjmall
Last=`date +"%Y年%m月%d日 %H:%M:%S"`
echo 开始:${Lasta} 结束:${Last} mall backup success >> $LogFile #记录备份日志
cd $BackDir/wujie2.0
tar -zcpf wujie2.0-${Date}.tar.gz /web/wujie2.0
Last=`date +"%Y年%m月%d日 %H:%M:%S"`
echo 开始:${Lasta} 结束:${Last} wujie2.0 backup success >> $LogFile #记录备份日志
find ${BackDir} -mtime +14 -name "*.gz" -exec rm -f {} \;
