require 'bundler/setup'
Bundler.require(:default)


#set up db connection
ActiveRecord::Base.establish_connection(
  adapter: 'mysql2',
  host: 'localhost',
  username: 'test1',
  password: 'password',
  database: 'test_db'
)

#require each file in models folder
Dir[File.expand_path './models/*.rb'].each do |file|
    require file
end