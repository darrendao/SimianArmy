#!/bin/bash
# Script for KillProcesses Chaos Monkey

cat << EOF > /tmp/kill_loop.sh
#!/bin/bash
while true;
do
    sudo pkill -KILL -f java
    sudo pkill -KILL -f python
    sudo pkill -KILL -f ruby
    sudo pkill -KILL -f unicorn_rails
    sudo pkill -KILL -f httpd
    sudo pkill -KILL -f nginx
    sleep 1
done
EOF

nohup /bin/bash /tmp/kill_loop.sh &
sleep 5
