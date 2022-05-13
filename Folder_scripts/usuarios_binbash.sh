#!/bin/bash
echo "... Los usuarios del sistema con consola bin/bash  son: ..."
cat /etc/passwd | grep /bin/bash | cut -d: -f1,7
