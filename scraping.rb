require 'bundler'
Bundler.require

require_all 'classes'

require 'pp'

resource_elements_factory = ResourceElemenetsFactory.new(file_number: 1)

resource_elements_factory.create.each do |element|
  puts element.pretty_inspect
  puts element.class
end
