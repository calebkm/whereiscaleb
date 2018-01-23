require 'rubygems'
require 'bundler'

Bundler.require

Dir.glob('./config/*.rb').each { |file| require file }

require './whereiscaleb'
run Snipping