#Info
=begin
Project: Hologram
Created: Saturday, ‎October ‎10, ‎2016, 11:10 PM
Author: Xavier Yorks
=end
#/Info

#Todo

#/Todo

#Loading Files
$: << File.dirname(__FILE__)
#/Loading Files

#Gems
require 'gosu'
require 'rubygems'
include Gosu
#/Gems

#Scripts
require "scripts/GameWindow.rb"
require "scripts/SceneMap.rb"
require "scripts/Player.rb"
#/Scripts

#Window
$window = GameWindow.new
$window.show
#/Window
