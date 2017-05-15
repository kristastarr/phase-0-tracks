puts "What is the hamster's name?"
hamster_name = gets.chomp


puts "What is the hamster's volume level on a scale of 1 - 10?"
volume_level = gets.to_i 

puts "What color is the hamster's fur?"
fur_color = gets.chomp

puts "Is the hamster a good candidate for adoption? y/n"
adoption = gets.chomp

puts "What is the hamster's approximate age?"
age = gets.to_f 

if age == "" 
	age = nil
else age = age.to_f 

 end 	

puts "The hamster's name is #{hamster_name}"
puts "The hamster's volume level is #{volume_level}"
puts "The hamster's fur color is #{fur_color}"
puts "Is the hamster a good candidate for adoption? #{adoption}"
puts "The hamster's approximate age is #{age}"
