# encoding: utf-8

require 'factory_girl_rails'

[Customer, Person, User, Correspondent, City, Province, Kase, Contract].each { |e| e.destroy_all   }

FactoryGirl.create :city
FactoryGirl.create :user
FactoryGirl.create :correspondent
FactoryGirl.create :kase