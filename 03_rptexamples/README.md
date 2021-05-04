# Writing Report Effectively

## Overview
The next report examples are based after the analysis and escalation of Vulnhub's Kioptrix Level 1. The idea is to show examples of how to write a repor based on the methodology used during the penetration test. The report needs to be accurate, impact based and verifiable.

## References
###### **1)www.youtube.com/c/FarahHawa**
###### **2)https://www.bugcrowd.com/blog/writing-successful-bug-submissions-bug-bounty-hunter-methodology/**
###### **3)https://hackerone.com/reports/816254**
###### **4)https://docs.hackerone.com/hackers/quality-reports.html**

## Report 1: Privilege Escalation using Samba
###### Summary:
Taking advance of the Samba Version installed on Kioptrix L1, it is possible to use the vulnerability known as trans2open to obtain root privileges into the system.
[More Details.](01smb/README.md)

## Report 2: Privilege Escalation using Secure Socket Layer
###### Summary:
The version of the protocol Secure Socket Layer and Apache Application Server in Kioptrix allow to obtain root privileges into the system.
[More Details.](02ssl/README.md)

## Report 3: Privilege Escalation of PostgreSQL 
###### Summary:
Using the above vulnerabilities found, it is possible to get full access to the PostgreSQL deployed in Kioptrix L1.
[More Details.](03dbms/README.md)

## Report 4: User's password credentials audit
###### Summary:
As a part of the privilege escalation in Kioptrix L1, it is possible to obtain the password hashes and decrypt them.
[More Details.](04pwaudit/README.md)