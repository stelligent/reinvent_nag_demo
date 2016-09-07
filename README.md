# Installation
This is tested on a MacOSX with 10.11.6

## Prerequisites
The following explicit versions were used.  Mileage will vary with other versions
but probably don't have to be so strict:

* Install Virtual Box (5.0.26 r108824)
      * https://www.virtualbox.org/wiki/Downloads
* Install Vagrant (1.7.4)
      * https://www.vagrantup.com/downloads.html
* Install chefdk 0.12.0
      * https://downloads.chef.io/chef-dk/

## Usage
* Converge and test the VM
      * `kitchen converge`
      * `kitchen verify`
  
* Login to the VM and do your worst:
      * `kitchen login`
      * `ls -l /srv`