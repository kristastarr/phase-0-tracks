# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
"shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk

i = 0
while i < zombie_apocalypse_supplies.length
    puts zombie_apocalypse_supplies[i]
    puts "*"
    i += 1
end

# ----

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.

NOT WORKING NEED TO FINISH

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars", "shotgun", "compass", "CB radio", "batteries"]

number_items = zombie_apocalypse_supplies.length - 1
swapped = false

number_items.times do |i|
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    letter_one = zombie_apocalypse_supplies[i][0]
    letter_two = zombie_apocalypse_supplies[i+1][0]
    
    # p alphabet_index(letter_one)
    # p alphabet_index(letter_two)
    if alphabet.index(letter_one) > alphabet.index(letter_two)
        
        zombie_apocalypse_supplies[i], zombie_apocalypse_supplies[i + 1] = zombie_apocalypse_supplies[i + 1], zombie_apocalypse_supplies[i]
        swapped = true
    end
    
    
    p zombie_apocalypse_supplies[i]
    p zombie_apocalypse_supplies[i][0]
    p zombie_apocalypse_supplies[i+1]
    # p zombie_apocalypse_supplies{i+1][0]
end


# ----

# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?

def supply_checker(array, item)
    i  = 0
    while i < array.length
        
        if item === array[i]
            p "I have my #{array[i]}!"
        end
        i+=1
    end
end

# ----

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.

def backpack (array)
    
    i = 0
    while i < array.length
        if array.length > 5
            array.pop
        end
        i += 1
    end
    p array
end

backpack(zombie_apocalypse_supplies)


# ----

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.

NOT RUNNING_ NEED TO FINISH 

other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
def combine(array1 ,array2)
    i = 0
    while i < array1.length
        if array2.include? (array1[i])
            array1.delete_at(i)
            else
            array2.push(array1[i])
        end
        i += 1
    end
    p array1
    p array2
end

combine(zombie_apocalypse_supplies, other_survivor_supplies)


# ----

# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----
