## Database of Community Resources 
# Require gems

require 'sqlite3'

# Create database
db = SQLite3::Database.new("resources.db")
db.results_as_hash = true

# Method to add a resource to the resource databases
create_resources_table = <<-table1
	CREATE TABLE IF NOT EXISTS resources(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		description VARCHAR(255),
		address VARCHAR(255), 
		phone VARCHAR(255),
		url VARCHAR(255),
		email VARCHAR(255),
		city_id INT,
		needs_id INT,

		FOREIGN KEY (city_id) REFERENCES cities(id),
		FOREIGN KEY (needs_id) REFERENCES needs(id)
	)
table1

create_cities_table = <<-table2
	CREATE TABLE IF NOT EXISTS cities(
		id INTEGER PRIMARY KEY,
		city VARCHAR(255)
	)
table2

create_needs_table = <<-table3
	CREATE TABLE IF NOT EXISTS needs(
		id INTEGER PRIMARY KEY,
		city VARCHAR(255)
	)
table3

db.execute(create_cities_table)
db.execute(create_needs_table)
db.execute(create_resources_table)


# def add_resource(db, info)
# 	db.execute("INSERT INTO resources (name, description, address, phone, website, email, city_id, needs_id) 
#    VALUES (?,?,?,?,?,?,?,?), ")

# end 


# def get_info 
  
# 	info = [ ]
# 	puts "Please enter the name of the organization"
# 	name = gets.chomp
# 	info << name 

# 	puts "Please enter a short description of assistance provided"
# 	description = gets.chomp
# 	info << description 

# 	puts "Please enter the address"
# 	address = gets.chomp
# 	info << address

# 	puts "Please enter the phone number"
# 	phone = gets.chomp
# 	info << phone 

# 	puts "Please enter the organization's website address or type none"
# 	website = gets.chomp
# 	info << website

# 	puts "Please enter the organization's email address"
# 	email = gets.chomp 
# 	info << email

# 	puts "Please enter the city where the organization provides services (INT)"
# 	city_id = gets.chomp
# 	info << city_id

# 	puts "Please enter the type of assistance provided (INT)"
# 	needs_id = gets.chomp 
# 	info << needs_id 

# 	return info 

# end 

# add resource (db, get info)




