#! /bin/sh

# expect -c "ssh@localhost\n";expect 'Passwor:';send <mypassword>\n;inteact "
expect -c "su";expect 'Password:';
