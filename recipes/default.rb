#
# Cookbook Name:: kafka
# Recipe:: default
#

libpath = File.expand_path '../../../kagent/libraries', __FILE__
require File.join(libpath, 'default')

node.default.kafka.broker.zookeeper.connect = private_cookbook_ip('zookeeper')
include_recipe 'kafka::_configure'
