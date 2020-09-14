#!/usr/bin/env ruby
 require 'optparse'
 require_relative 'parse'
 require_relative 'printer'

 options = {}
 optparse = OptionParser.new do|opts|
   opts.banner = "Usage: lib/parser.rb [options] file"

   options[:most] = false
   opts.on( '-m', '--most', 'list of webpages with most page views ordered from most pages views to less page views' ) do
     options[:most] = true
   end

   options[:unique] = false
   opts.on( '-u', '--unique', 'list of webpages with most unique page views' ) do
     options[:unique] = true
   end

   opts.on( '-h', '--help', 'Display this screen' ) do
     puts opts
     exit
   end
 end

 optparse.parse!

 puts 'add -h or --help to see how to use it. =)' if ARGV[0].nil?
 ARGV.each do|f|
   parsed_data = Parse.call(f)
   Printer.print_visits(parsed_data) if options[:most]
   Printer.print_uniques(parsed_data) if options[:unique]
   unless options[:most] && options[:unique]
     Printer.print_visits(parsed_data)
     Printer.print_uniques(parsed_data)
   end
 end
