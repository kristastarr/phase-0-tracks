## Database of Community Resources 
# Require gems

require 'sqlite3'

# Create database
db = SQLite3::Database.new("resources.db")
db.results_as_hash = true

# Command to add a table of resources to the resource database
create_resources_table = <<-table1
	CREATE TABLE IF NOT EXISTS resources(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		description VARCHAR(255),
		address VARCHAR(255), 
		phone VARCHAR(255),
		url VARCHAR(255),
		email VARCHAR(255),
		county_id INT,
		needs_id INT,

		FOREIGN KEY (county_id) REFERENCES counties(id),
		FOREIGN KEY (needs_id) REFERENCES needs(id)
	)
table1

# Command to add a table of cities to the resource database (establishes foreign keys)
create_counties_table = <<-table2
	CREATE TABLE IF NOT EXISTS counties(
		id INTEGER PRIMARY KEY,
		county VARCHAR(255)
	)
table2

# Command to add a table of needs to the resource database (establishes foreign keys)
create_needs_table = <<-table3
	CREATE TABLE IF NOT EXISTS needs(
		id INTEGER PRIMARY KEY,
		need VARCHAR(255)
	)
table3

# Using each command to create the tables
db.execute(create_counties_table)
db.execute(create_needs_table)
db.execute(create_resources_table)

# Used the terminal to populate the counties and needs tables- 
# Since the users won't need to make changs to those tables, they don't need a UI


	 




# method that adds a resource to the resources table: 
def add_resource(db, name, description, address, phone, url, email, county_id, needs_id)

	add_resource_cmd = <<-cmd2
		INSERT INTO resources 
		(name, description, address, phone, url, email, county_id, needs_id)
		VALUES (?, ?, ?, ?, ?, ?, ?, ?)  	
	cmd2

	db.execute(add_resource_cmd, [name, description, address, phone, url, email, county_id, needs_id])
end 

def resource_search(db, county, need)
search = db.execute("SELECT * FROM resources")
results = []

	search.each do |listing|
		if listing[7] == county_id.to_i && listing[8] == needs_id.to_i

		results << listing

		end 
	end

p results 	 
end 	



# Driver code to test the method:
# add_resource(db, 
# 	"Capitol Area Food Bank",
# 	"Provides food to people in need",
# 	"123 Main St Austin TX 78702",
# 	"(512)533-3333", 
# 	"www.capitolareafoodbank.com",
# 	"admin@cafb.com",
# 	1, 
# 	2)


## Driver code - user interface: 
puts "Welcome to the Community Resource Database!!"
puts "What do you want to do?"
puts "Type 1 to add a resource to the database"
puts "Type 2 to search for a resource in your area"
puts "Type 3 to exit the program"

input = gets.chomp

if input.to_i == 1

	puts "Please enter the name of the organization"
	name = gets.chomp
	

	puts "Please enter a short description of the assistance provided by the organization"
	description = gets.chomp
	 

	puts "Please enter the address"
	address = gets.chomp
	

	puts "Please enter the phone number"
	phone = gets.chomp
	

	puts "Please enter the website address, or type none"
	url = gets.chomp
	 

	puts "Please enter the best email or type none"
	email = gets.chomp


	puts "What county does this organization serve?"
	puts "Enter 1 for Travis County"
	puts "Enter 2 for Williamson County"
	puts "Enter 3 for Hayes County"
	county_id = gets.chomp   


	puts "What type of assistance does this organization provide?"
	puts "Enter 1 for housing"
	puts "Enter 2 for food"
	puts "Enter 3 for medical care"
	puts "Enter 4 for counseling"
	puts "Enter 5 for children's services"
	needs_id = gets.chomp

	add_resource(db, name, description, address, phone, url, email, county_id, needs_id)


elsif input.to_i == 2

	puts "What county do you live in?"
	search_county = gets.chomp

	puts "What type of assistance do you need?"
	search_need = gets.chomp 

	puts search_county
	puts search_need

	resource_search(db, search_county, search_need)


# elsif input.to_i == 3 
# 	break

else 
puts "Invalid entry- please try again"	

end 	