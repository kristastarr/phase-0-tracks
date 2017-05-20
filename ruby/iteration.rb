
#release 0

def complimenter
    puts "Good morning, sunshine!"
    yield("hair", "eyes")
    puts "Have an awesome day!"
    
end

complimenter { |x , y| puts "You have beautiful #{x} and #{y}!" }

#release 1

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

#release 2

numbers = [1, 2, 3, 4, 5, 6, 7]
letters_numbers = {
    a: 1,
    b: 2,
    c: 3,
    d: 4,
    e: 5,
    f: 6,
    g: 7
}

numbers.delete_if {|x| x > 4}

letters_numbers.delete_if {|x, y| y < 6}

numbers.select {|x| x < 4}

letters_numbers.select {|x, y| y > 3}

numbers.keep_if {|x| x > 2}

letters_numbers.keep_if {|x, y| y < 4}

numbers.drop_while {|x| x < 5}

letters_numbers.reject {|x, y| y > 4}
