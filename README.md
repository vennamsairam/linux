# linux

```
uptime     - it shows server uptime and load of server
mkdir      - it will create directory
ping       - It will check if ip address is responding
yum update - it install all packages
ls         - The most frequently used command in Linux to list directories
pwd        - Print working directory command in Linux
cd         - Linux command to navigate through directories
mv         - Move or rename files in Linux
cp         - Similar usage as mv but for copying files in Linux
rm         - Delete files or directories
touch      -  Create blank/empty files
ln         - Create symbolic links (shortcuts) to other files
cat        - Display file contents on the terminal
clear      - Clear the terminal display
echo       - Print any text that follows the command
less       - Linux command to display paged outputs in the terminal
man        - Access manual pages for all Linux commands
uname      - Linux command to get basic information about the OS
whoami     - Get the active username
tar        - Command to extract and compress files in Linux
grep       - Search for a string within an output
head       - Return the specified number of lines from the top
tail       - Return the specified number of lines from the bottom
vimdiff    - Find the difference between two files
sort       - Linux command to sort the content of a file while outputting
export     - Export environment variables in Linux
zip        - Zip files in Linux
unzip      - Unzip files in Linux
ssh        - Secure Shell command in Linux
service    - Linux command to start and stop services
systemctl  - used for services
ps         - Display active processes
kill       - and killall - Kill active processes by process ID or name
df         - Display disk filesystem information
mount      - Mount file systems in Linux
chmod      - Command to change file permissions
chown      - Command for granting ownership of files or folders
ifconfig   - Display network interfaces and IP addresses
ip a s     - to show Ipaddress
traceroute - Trace all the network hops to reach the destination
wget      - Direct download files from the internet
ufw       - Firewall command
iptables  - Base firewall for all other firewall utilities to interface with
apt, pacman, yum, rpm - Package managers depending on the distro
sudo     - Command to escalate privileges in Linux
cal      - View a command-line calendar
alias    - Create custom shortcuts for your regularly used commands
dd - Majorly used for creating bootable USB sticks
whereis - Locate the binary, source, and manual pages for a command
top - View active processes live with their system usage
useradd and usermod - Add new user or change existing users data
passwd - Create or update passwords for existing users
grep - to filter text
awk - filter bit advanced
find - find / -name xyz-001.txt
nohup -
```

## Filesystems:
```
df -h

[root@dev ~]# df -h
Filesystem           Size  Used Avail Use% Mounted on
devtmpfs             3.8G     0  3.8G   0% /dev
tmpfs                3.8G     0  3.8G   0% /dev/shm
tmpfs                3.8G   18M  3.8G   1% /run
tmpfs                3.8G     0  3.8G   0% /sys/fs/cgroup
/dev/mapper/cs-root   62G  7.6G   54G  13% /
/dev/mapper/cs-home   30G  258M   30G   1% /home
/dev/sda1           1014M  425M  590M  42% /boot
tmpfs                770M   16K  770M   1% /run/user/42
tmpfs                770M  8.0K  770M   1% /run/user/0

df -i
mount
umount
```
## LVM




git clone  - cloning the repository
git commit - to commit the repository

Digfferent Git providers
github     - Microsoft
gitlab     - 
attlassian - bitbucket
Azure      - Azure repos
AWS        -
Gcp        -




## Connecting to servers
Linux - ssh service 22
Windows - RDP 3389
Azure - ssh -i xyx.pem 192.168.9.100


Most Developments

1. Java
2. Node
3. Python
4. Asp .Net



```
/etc/passwd:
Contains user account information, including usernames, user IDs, home directories, and default shells.

/etc/group:
Stores information about user groups, including group names and associated user accounts.

/etc/hostname:
Specifies the hostname of the system.

/etc/hosts:
Associates IP addresses with hostnames, used for local DNS resolution.

/etc/network/interfaces (or /etc/sysconfig/network-scripts/ifcfg-*):
Configuration file for network interfaces, including IP addresses, gateways, and DNS settings.

/etc/resolv.conf:
Contains information about DNS name servers and search domains.

/etc/fstab:
Defines how storage devices and partitions should be mounted in the file system.

/etc/ssh/sshd_config:
Configuration file for the OpenSSH server, controlling various aspects of the SSH server's behavior.

/etc/ssh/ssh_config:
Configuration file for the OpenSSH client, specifying default settings for client connections.

/etc/sudoers:
Configures sudo, specifying which users or groups are allowed to execute commands with superuser privileges.

/etc/hostname:
Contains the system's hostname.

/etc/hosts.allow and /etc/hosts.deny:
Control which hosts are allowed or denied access to services configured through inetd or xinetd.

/etc/profile and /etc/bash.bashrc:
System-wide shell configuration files for Bash. Settings here apply to all users.

/etc/environment:
Specifies system-wide environment variables for all users.

/etc/crontab:
Configures system-wide cron jobs, specifying when certain commands or scripts should be executed.

/etc/sysctl.conf:
Controls kernel parameters during the boot process, influencing system performance and behavior.

/etc/logrotate.conf:
Configuration file for log rotation, defining how log files should be rotated and archived.

/etc/issue and /etc/issue.net:
Display information shown before the login prompt, often used for system identification or messages.

/etc/samba/smb.conf:
Configuration file for the Samba server, which allows Linux systems to share files and printers with Windows systems.

/etc/nsswitch.conf:
Configures the Name Service Switch, determining the order in which different data sources (files, DNS, NIS) are queried for system information.




scenario based interview questions

Scenario: A user reports being unable to log in. How would you troubleshoot this issue?
Answer: I would first check the user's account status using the passwd -S username command to ensure it's not locked. Then, I would examine relevant log files like /var/log/auth.log for any authentication errors and verify that the user's home directory and shell are properly configured.

Scenario: The server is running out of disk space. What steps would you take to identify and resolve the issue?
Answer: I would use the df -h command to check disk space usage. To identify large files or directories, I might use du -h or ncdu. If logs consume space, I'd check and truncate log files. Additionally, I'd investigate if unnecessary files or old backups can be removed.

Scenario: A process is consuming excessive CPU. How do you identify and handle it?
Answer: I would use the top or htop command to identify the process causing high CPU usage. If needed, I could use kill or pkill to terminate the process. Further investigation may involve examining log files or using tools like strace or perf to analyze the process's behavior.

Scenario: A user forgets their password. How do you help them regain access to their account?
Answer: I would use the passwd command to reset the user's password. If applicable, I might also check if the user has set up password recovery options. It's important to ensure password policies are followed and communicated to the user.

Scenario: You suspect a network connectivity issue on a server. How would you troubleshoot it?
Answer: I would first check the network configuration using commands like ifconfig or ip addr. Then, I'd use tools like ping and traceroute to test connectivity to other hosts. Examining the /var/log/syslog or /var/log/messages file could provide additional insights.

Scenario: A service fails to start on boot. How would you diagnose and fix this issue?
Answer: I would check the service's status using systemctl status servicename. Examining the service logs with journalctl -xe or looking at the specific service logs in /var/log might reveal the cause. Adjusting the service's configuration in /etc and restarting it may be necessary.

Scenario: You need to apply security updates to a Linux server. How do you approach this task?
Answer: I would use the package manager (e.g., apt or yum) to update all installed packages. Before doing so, I'd ensure a backup is in place, especially for critical systems. After the update, I would restart any affected services or the system if required.

Scenario: A user accidentally deletes important files. How can you help recover them?
Answer: I would check if the files are in the user's trash (~/.local/share/Trash). If not, I might use file recovery tools like extundelete or testdisk. It's crucial to advise users to avoid further writes to the disk to increase the chances of successful recovery.

Scenario: The system's load is unusually high. How would you investigate this issue?
Answer: I would use commands like top or htop to identify processes causing high load. Additionally, examining the output of uptime and checking system logs (/var/log/syslog or /var/log/messages) might reveal any recent events or issues.

Scenario: A user needs to transfer files securely between two Linux servers. What method would you recommend, and how would you set it up?
Answer: I would recommend using scp (Secure Copy) or rsync over SSH for secure file transfer. To set it up, I would ensure SSH is installed, and then users can use commands like scp for individual files or rsync for syncing directories securely.


Scenario: A critical system process is repeatedly crashing. How would you troubleshoot and resolve this issue?
Answer: I would check the system logs (/var/log/syslog or /var/log/messages) for error messages related to the process. Using tools like strace or gdb may help identify the cause. If necessary, I might reinstall or update the package associated with the process.

Scenario: You need to configure a Linux server to act as a DHCP server for a local network. How would you approach this task?
Answer: I would install and configure the DHCP server software (e.g., dhcpd), then edit its configuration file to define the IP address range, gateway, DNS servers, etc. Finally, I'd start the DHCP service and ensure it starts on boot.

Scenario: You suspect a server is under a distributed denial of service (DDoS) attack. What steps would you take to mitigate the impact?
Answer: I would use tools like netstat or tcpdump to analyze network traffic. If possible, I might implement rate limiting or block suspicious IP addresses using firewall rules (iptables or ufw). Additionally, I could work with the network provider to mitigate the attack.

Scenario: A user complains about slow performance when accessing a specific website. How would you troubleshoot and resolve this issue?
Answer: I would first check the user's internet connection using tools like ping or traceroute. If the issue persists, I might investigate DNS resolution, inspect browser settings, and check if the website is experiencing issues. Clearing browser cache and cookies could also be a solution.

Scenario: You need to schedule a task to run automatically at a specific time every day. How would you set up a cron job for this task?
Answer: I would use the crontab -e command to edit the user's crontab file and add an entry specifying the schedule and the command to be executed at that time.

Scenario: A user reports that they are unable to connect to a remote server using SSH. How would you troubleshoot and resolve this issue?
Answer: I would check if the SSH service is running on the remote server using systemctl status ssh. Examining the server's SSH configuration file (/etc/ssh/sshd_config) and checking for firewall rules blocking port 22 could provide insights. If necessary, I might restart the SSH service.

Scenario: You need to add a new user to a Linux system with specific permissions. How would you create the user and assign the required permissions?
Answer: I would use the adduser or useradd command to create the user, and then modify the user's group membership and file permissions using usermod and chmod as needed.

Scenario: The system clock on a Linux server is incorrect. How would you synchronize the system clock with a network time server?
Answer: I would use the timedatectl command to set the system clock and configure it to synchronize with a network time server. Alternatively, I might use the ntpdate command to manually update the time.

Scenario: A disk drive is showing signs of failure. How would you identify the failing drive and replace it in a RAID configuration?
Answer: I would use tools like smartctl to check the SMART status of the drives. If a drive is failing, I would replace it by first identifying the drive in the RAID array and then using commands like mdadm to remove and add the new drive to the array.

Scenario: A user accidentally deletes important system files, leading to a non-bootable system. How would you recover the system?
Answer: I would use a live Linux distribution to boot into the system, mount the root partition, and restore the deleted files from a backup. If no backup is available, I might attempt to reinstall critical packages or restore missing system files manually.




## Server New Request
  1. install centOS 7            - 
  2. hostname orac002.vennam.com  - hostnamectl set-hostname <servername>
  3. IPAddress        - 192.168.29.29
  4. user: oracle-db  - uasedall

## Required packages.
  1. dns utils          - yum install bind-utils -y
  2. Network Tools      - yum install net-tools -y
  3. docker             - https://docs.docker.com/engine/install/centos/
  4. git                - https://www.digitalocean.com/community/tutorials/how-to-install-git-on-centos-7
  6. prometheus client  - https://github.com/jniranjanreddy/monitoring/blob/main/node-exporter.sh
  7. nodejs             - https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-a-centos-7-server
  8. python             - https://github.com/jniranjanreddy/linux/blob/main/python-3-10.md
  9 nfs-server          - https://dev.to/prajwalmithun/setup-nfs-server-client-in-linux-and-unix-27id
  10. install nginx server - https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-centos-7
```
