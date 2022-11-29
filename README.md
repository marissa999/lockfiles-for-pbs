# lockfiles-for-pbs
Simple bash scripts I made for my SO and me to create lockfiles for proxmox-pbs hooks

We use it in our Proxmox Hook that runs before and after our backup starts so we can start the server via WOL and turn it off at the end if nobody is currently making a backup.

The create- and delete-lockfile-Scripts need to be called with a name, something like `/opt/scripts/create-backup-lockfile.sh mari`
