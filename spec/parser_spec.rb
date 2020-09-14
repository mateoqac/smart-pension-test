# frozen_string_literal: true

require 'parse'

RSpec.describe 'Parse' do
  describe '.call' do
    it 'returns a list of webpages with most page views ordered from most pages views to less page views' do
      filepath = File.join(File.dirname(__FILE__), '/example.log')
      expected = {
        '/about'=>['836.973.694.403','235.313.352.950','235.313.352.950','235.929.352.532'],
        '/index'=>['929.398.951.889','192.398.951.889'],
        '/home'=>['444.701.448.104']
      }
      expect(Parse.call(filepath)).to eq(expected)
    end
  end
end
