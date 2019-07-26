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
then                                                                                  table_size=$3
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

cmd="sysbench --test=oltp --db-driver=mysql --mysql-table-engine=$engine --oltp-tabze=$table_size --mysql-db=dbtest --mysql-user=root --mysql-host=127.0.0.1 --mysql-p306 --mysql-password=123456"

requests=`expr $thread_num \* $thread_size`


$cmd prepare
mkdir -p data
$cmd --num-threads=$thread_num --max-requests=$requests run > data/result.$thread_n&1
grep -v sysbench data/result.$thread_num | awk  -f sysbench.awk -v engine=$engine -le_size=$table_size -v custom_tag=$custom_tag >> /var/www/html/result.json
$cmd cleanup



