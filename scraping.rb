require 'bundler'
Bundler.require

require_all 'class'

require 'pp'

resource_elements_factory = ResourceElemenetsFactory.new(file_number: 2)

raise resource_elements_factory.create.pretty_inspect
