#!/bin/bash

source /build/docker-yodle-base/profile

$apt_get update

echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
add-apt-repository ppa:webupd8team/java trusty
$apt_get update
$apt_get install oracle-java8-installer

# Don't leave this dir around, it just consumes space
rm -rf /var/cache/oracle-jdk8-installer
