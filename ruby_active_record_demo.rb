require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'mysql2',
  host: 'localhost',
  username: 'bgc',
  password: 'p@ssw0rd',
  database: 'test_db'
)

require 'active_record'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'test.db')



# CREATE TABLE IF NOT EXISTS starship (name TEXT, age INT);
class Starship < ActiveRecord::Base
end



# Create ships to save to to store in database (3 ways)
new_starship = Starship.new(name: 'Enterprise', class: 'Consitution', registry: 1701, captain: 'James T. Kirk')
new_starship.save

Starship.new { |s|
    s.name = 'Defiant'
    s.class = 'Defiant'
    s.registry = 74656
    s.captain = 'Benjamin Layfaette Sisko'
}.save

Starship.create(name: 'Voyager', class: 'Intrepid', registry: 73656, captain: 'Kathryn Janeway')



# Print information about the database table
Starship.columns.each { |column|
  puts column.name
  puts column.type
}