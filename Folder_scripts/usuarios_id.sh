#!/bin/bash
echo "... Los usuarios del sistema con UID > 1000 son: ..."
cut -d: -f1,3 /etc/passwd | egrep ':[0-9]{4}' | cut -d: -f1,2
