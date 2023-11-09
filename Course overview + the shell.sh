#!/bin/bash
chienhau-laptop@ChienhaudeMacBook-Pro ~ % cd /tmp
chienhau-laptop@ChienhaudeMacBook-Pro /tmp % mkdir missing
chienhau-laptop@ChienhaudeMacBook-Pro /tmp % ls
com.apple.launchd.mlQQ6t9y9m	missing
com.google.Keystone		powerlog
chienhau-laptop@ChienhaudeMacBook-Pro /tmp % man touch
chienhau-laptop@ChienhaudeMacBook-Pro /tmp % cd missing
chienhau-laptop@ChienhaudeMacBook-Pro missing % touch semester
chienhau-laptop@ChienhaudeMacBook-Pro missing % ls
semester
chienhau-laptop@ChienhaudeMacBook-Pro missing % echo '#!/bin/sh' > semester
chienhau-laptop@ChienhaudeMacBook-Pro missing % echo curl --head --silent https://missing.csail.mit.edu >> semester
chienhau-laptop@ChienhaudeMacBook-Pro missing % cat semester
#!/bin/sh
curl --head --silent https://missing.csail.mit.edu
chienhau-laptop@ChienhaudeMacBook-Pro missing % ./semester
zsh: permission denied: ./semester
chienhau-laptop@ChienhaudeMacBook-Pro missing % ls -l
total 8
-rw-r--r--  1 chienhau-laptop  wheel  61 Nov  8 23:18 semester
chienhau-laptop@ChienhaudeMacBook-Pro missing % man chmod
chienhau-laptop@ChienhaudeMacBook-Pro missing % chmod 777 semester
chienhau-laptop@ChienhaudeMacBook-Pro missing % ls -l
total 8
-rwxrwxrwx  1 chienhau-laptop  wheel  61 Nov  8 23:18 semester
chienhau-laptop@ChienhaudeMacBook-Pro missing % ./semester | grep last-modified > ~/last-modified.txt
chienhau-laptop@ChienhaudeMacBook-Pro missing % cat ~/last-modified.txt
last-modified: Sat, 14 Oct 2023 12:37:10 GMT