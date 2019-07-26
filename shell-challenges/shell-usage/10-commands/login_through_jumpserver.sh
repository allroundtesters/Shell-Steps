echo "usage- [target_ip] [jump_server_ip]i [user]"
ssh root@$1 -o ProxyCommand='ssh $3@$2 -i ~/.ssh/$3 -W %h:%p'
