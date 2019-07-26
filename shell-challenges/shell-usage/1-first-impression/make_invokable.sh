#! /bin/sh

# grant all user read and write
chmod 555 cleanuplog_1.sh
# grant all user read and write
chmod +rx cleanuplog_1.sh
#grand owner read and write
chmod u+rx cleanuplog_1.sh

# run the script
./cleanuplog_1.sh

# mv cleanuplog_1.sh /usr/local/bin