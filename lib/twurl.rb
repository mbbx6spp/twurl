require 'rubygems'
require 'oauth'
require 'optparse'
require 'ostruct'
require 'stringio'
require 'yaml'

require File.join(File.dirname(__FILE__), "twurl/abstract_command_controller")
library_files = Dir[File.join(File.dirname(__FILE__), "/twurl/**/*.rb")]
library_files.each do |file|
  require file
end

module Twurl
  @options ||= Options.new
  class << self
    attr_accessor :options
  end

  class Exception < ::Exception
  end
end
