# Used to "set up" operations. requires/imports all operations files (CRUD)

#Similar to models file except uses /operations.

require 'bundler/setup'

Bundler.require(:default)

Dir[File.expand_path './operations/*.rb'].each do |file|
  require file
end