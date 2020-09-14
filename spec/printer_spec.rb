# frozen_string_literal: true

require 'printer'

RSpec.describe 'Printer' do
  describe '.print_visits' do
    it 'prints a list of webpages with the number of visits' do
      input = {
        '/about'=>['836.973.694.403','235.313.352.950','235.313.352.950','235.929.352.532'],
        '/index'=>['929.398.951.889','192.398.951.889'],
        '/home'=>['444.701.448.104']
      }
      output ="/about 4 visits\n/index 2 visits\n/home 1 visits\n"
      expect{Printer.print_visits(input)}.to output(output).to_stdout
    end
  end

  describe '.print_uniques' do
    it 'prints a list of webpages with the number of unique visits' do
      input = {
        '/about'=>['836.973.694.403','235.313.352.950','235.313.352.950','235.929.352.532'],
        '/index'=>['929.398.951.889','192.398.951.889'],
        '/home'=>['444.701.448.104']
      }
      output ="/about 3 visits\n/index 2 visits\n/home 1 visits\n"
      expect{Printer.print_uniques(input)}.to output(output).to_stdout
    end
  end
end
