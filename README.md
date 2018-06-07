# BitcoinCash-Daemon-Deployment-CentOS7

A simple bash script to deploy a Bitcoin Cash Daemon on CentOS 7. (BCH)


### Table of Contents
---------------------
* [Features](#features)
* [Requirements](#requirements)
* [Included Files](#included-files)
* [Support](#support)
* [Useful Links](#useful-links)
* [Donations](#donations)
* [License](#license)



### Features
-------------

* Installs and configures the Bitcoin Cash Daemon on CentOS 7.
* Configures Systemd and Logrotate for use with the Bitcoin Cash Daemon.
* Documentation.



### Requirements
-------------

* Root access to a CentOS 7.* Server with enough space to host the BCH blockchain. (500GB or more)
* Internet Access.  



### Included Files
------------------

* Bitcoin Cash daemon deployment Bash script for CentOS 7.
* Bitcoin Cash daemon systemd service file. 
* Bitcoin Cash logrotate configuration file.
* Bitcoin Cash configuration file.



### Quick Deployment Instrcutions (Work in Progress)
-----------

For quick deployment please ensure:

* Root access to an updated CentOS 7 server. 


#### As Root Type
```bash
yum install -y git
cd ~
git clone https://github.com/CanadianRepublican/BitcoinCash-Daemon-Deployment-CentOS7.git BCH-Deploy
cd BCH-Deploy
bash deploy-bch-daemon.sh

```



### Support
-----------

Since I am extremely lazy I am not going to offer any support. Well maybe every once-n-a while. It really depends on my mood. 

That being said, time was spent documenting each command in the scripts. This should allow the scripts to be easily understood and modified if needed. 



### Useful Links
-----------------

*Bitcoin Cash GitHub:*

https://github.com/Bitcoin-ABC/bitcoin-abc


*Bitcoin Core Conf File Example:*

https://github.com/bitcoin/bitcoin/blob/master/contrib/debian/examples/bitcoin.conf



### Donations
-------------

Many Bothans died getting these scripts to you, honor them by sending me some Bitcoin(BTC), or Ethereum(ETH).

 * BTC: 1K4N5msYZHse6Hbxz4oWUjwqPf8wu6ducV
 * ETH: 0x76AB557F159a5048fA944566dbb18C834228d4e7




### License
-----------

Released under the GNU General Public License v3. (Not sure this is even valid)

 * http://www.gnu.org/licenses/gpl-3.0.html
