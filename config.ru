require 'rubygems'
require 'bundler'

Bundler.require

Dir.glob('./services/*.rb').each { |file| require file }

require './whereiscaleb'
run WhereIsCaleb

# rackup