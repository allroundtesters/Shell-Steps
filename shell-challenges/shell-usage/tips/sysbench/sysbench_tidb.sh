#! /bin/sh

thread_num=1
if [ $# -ge 1 ]
then
   thread_num=$1
fi

thread_size=500
if [ $# -ge 2 ]
then
   thread_size=$2
fi
table_size=40000
if [ $# -ge 3 ]
then                                                                                  
table_size=$3
fi
custom_tag=""
if [ $# -ge 4 ]
then
   custom_tag=$4
fi

engine="myisam"
if [ $# -ge 5 ]
then
   engine=$5
fi
cmd="sysbench --test=oltp --mysql-table-engine=$engine --oltp-table-size=$table_sizltp-read-only=off --init-rng=on --oltp-dist-type=uniform  --mysql-host=127.0.0.1 ---port=4000 --mysql-user=root --db-driver=mysql --mysql-db=dbtest"
#cmd="sysbench --test=oltp --db-driver=mysql --mysql-table-engine=$engine --oltp-taize=$table_size --mysql-db=dbtest --mysql-user=root --mysql-host=127.0.0.1 --mysql-4000  --oltp-read-only=off --init-rng=on --oltp-dist-type=uniform --max-time=3600 "
requests=`expr $thread_num \* $thread_size`
tm=`date "+%Y%m%d%H%M%S"`

$cmd prepare
mkdir -p data
$cmd --num-threads=$thread_num --max-requests=$requests run > data/result.$tm 2>&1
grep -v sysbench data/result.$tm | awk  -f sysbench.awk -v engine=$engine -v table_$table_size -v custom_tag=$custom_tag >> /var/www/html/.json
$cmd cleanup