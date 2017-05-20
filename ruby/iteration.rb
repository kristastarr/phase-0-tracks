
def complimenter
    puts "Good morning, sunshine!"
    yield("hair", "eyes")
    puts "Have an awesome day!"
    
end

complimenter { |x , y| puts "You have beautiful #{x} and #{y}!" }


dogs = ["beagle", "shitzu", "daschund", "maltipoo"]

dog_names = {
    dog_one: "Fluffy",
    dog_two: "Spot",
    dog_three: "Fido"
}

puts "Array before .each"
p dogs

dogs.each do |breed|
    puts breed + "s are so cute!!"
end

puts "Array after .each"
p dogs

puts "Hash before .each"
p dog_names

dog_names.each do |number, name|
    puts "Dog #{number} is named #{name}"
end

puts "Hash after .each"
puts dog_names

puts "Array before .map!"
puts dogs

dogs.map! do |name|
    name.chop
end

puts "Array after .map!"
puts dogs

