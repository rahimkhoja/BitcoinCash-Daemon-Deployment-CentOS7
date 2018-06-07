# BitcoinCash-Daemon-Deployment-CentOS7

# NGINX-CERTBOT-CENTOS-7

A simple bash script to deploy a Bitcoin Cash Daemon. (BCH)


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

* Installs and configures NGINX on CentOS 7.
* Generates SSL certificates and configures NGINX to use them.
* Automatically Renews SSL certificates generated with Certbot and LetsEncrypt.  
* Easy to use Bash scripts. 
* Documentation.



### Requirements
-------------

* Root access to a CentOS 7.* Server.
* Port 80 and 443 on the server must be accessible from the internet.
* The server must have a publically accessible DNS name.   



### Included Files
------------------

* NGINX Deployment and Configuration Script for CentOS 7.
* Easy SSL Certificate and NGINX Proxy Domain Deployment Script for CentOS 7.
* NGINX Virtual Server/Host Default Template Configuration File.   



### Quick Deployment Instrcutions (Work in Progress)
-----------

For quick deployment please ensure:

* Root access to an updated CentOS 7 server. 
* The server is internet accessable with Ports 80 and 443 open.
* The server has a public DNS address assigned. 


#### Step 1
```bash
yum install -y git
cd ~
git clone https://github.ubc.ca/rkhoja/NGINX-CERTBOT-CENTOS-7.git nginx-centos7-certbot
mv ./nginx-centos7-certbot/ /opt/
chmod +x /opt/nginx-centos7-certbot/*.sh

```



### Support
-----------

Since I am extremely lazy I am not going to offer any support. Well maybe every once-n-a while. It really depends on my mood. 

That being said, time was spent documenting each command in the scripts. This should allow the scripts to be easily understood and modified if needed. 



### Useful Links
-----------------

*NGINX Example Config File:*

https://www.nginx.com/resources/wiki/start/topics/examples/full/

*NGINX Proxy Configuration Documentation:*

https://www.nginx.com/resources/wiki/start/topics/examples/reverseproxycachingexample/

*Let's Encrypt Overview:*

https://letsencrypt.org/how-it-works/

*Let's Encrypt Limits and Docs: Important!* (So You Don't Bang Your Head)

https://letsencrypt.org/docs/rate-limits/




### Donations
-------------

Many Bothans died getting these scripts to you, honor them by sending me some Bitcoin(BTC), or Ethereum(ETH).

 * BTC: 1K4N5msYZHse6Hbxz4oWUjwqPf8wu6ducV
 * ETH: 0x76AB557F159a5048fA944566dbb18C834228d4e7




### License
-----------

Released under the GNU General Public License v2. (Not sure this is even valid)

 * http://www.gnu.org/licenses/gpl-2.0.html
