#!/usr/bin/env jruby

require 'rubygems'
require 'bundler'
Bundler.require

require 'net/pop'

pop = Net::POP3.new('pop3.live.com', 995)
pop.enable_ssl(OpenSSL::SSL::VERIFY_NONE) 
pop.start('karl.baum@hotmail.com', 'secret123')
