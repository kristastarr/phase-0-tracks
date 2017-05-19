# Ask user to input data to answer your questions (use puts) 
# As the data is entered, convert it to the appropriate data type using ruby methods 
# Push or shovel all the responses into a hash
# Print the hash (use puts, print, or p?)
# Ask the user if they would like to update any of their responses or enter "none" (use a loop!)
# If they would like to update, they will type the name of the key and the program will take in the new data 
# and reassign it to the specified key 
# Then re-print the hash with updated responses
# If the user enters "none" then just go ahead and print the loop



customer_data = {}

puts "What is your name?"
customer_data[:name] = gets.chomp 

puts "How old are you?"
customer_data[:age] = gets.to_i

puts "How many children do you have?"
customer_data[:children] = gets.to_i


puts "What is your favorite color?"
customer_data[:color] = gets.chomp

puts "Do you like midcentury decor? y/n"
midcentury = gets.chomp

if midcentury = "y"
  customer_data[:likes_midcentury] = true 
else 
  customer_data[:likes_midcentury] = false 
end   


puts "Do you like frency country decor? y/n"
french_country = gets.chomp

if french_country = "y"
  customer_data[:likes_french_country] = true 
else 
  customer_data[:likes_french_country] = false 
end   

puts "What about boho chic? y/n"
boho_chic = gets.chomp 
	if boho_chic = "y"
  customer_data[:likes_boho_chic] = true 
else 
  customer_data[:likes_boho_chic] = false 
end   

puts "Here are your responses:"
puts customer_data 
puts "Would you like to change any of your responses? If no, enter none." 
edit = gets.chomp 

if edit == "none"
	puts "Thanks for entering your responses!"
else puts "Which one?"
  key = gets.chomp.to_sym 
  puts "What do you want to change it to?"
 customer_data[key] = gets.chomp 
 puts "Here are your updated responses:"
 puts customer_data
end 