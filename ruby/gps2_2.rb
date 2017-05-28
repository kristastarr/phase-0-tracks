# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
# 1. Create a hash
# 2. Get user input in the form of a string
# 3. Split the string into array
# 3. Assign each item the array to its own key in the hash
# 4. Set default quantity to 1
# 5. Print the list to the console use print list method
# output: hash

# Method to add an item to a list
# input: hash, list, item name, and optional quantity
# steps:
#1. add item and quantity to the hash as a key value pair
# output: Call print method - print the hash including the new items

# Method to remove an item from the list
# input: hash, item to be deleted- a key
# steps:
# 1. see if the item matches any of the keys in the array (may need to convert item symbol .to_sym)
# 2. if there is a match, delete the key and the value
# output: run print function to print updated list

# Method to update the quantity of an item
# input: hash, name of item that you want to change quantity of (string/key), and new quantity (integer)
# steps:
# 1. compare the key to all the keys in the hash until we find a match
# 2. if there is a match, replace the value with the new quantity
# 3. if there is not a match, print "no match- try again"
# output: run print function to print updated list

# Method to print a list and make it look pretty
# input: the grocery list hash
# steps:
#1. Print each key and value as a string
# output: A list of each key value pair on its own line

def create_list(items_string)
  list = {}
  items_array = items_string.split(",")

  items_array.each do |item|
    list[item] = 1
  end
  print_pretty_list(list)
end


def add_item(list, item_name, quantity = 0)
  list[item_name] = quantity
  print_pretty_list(list)
end


def remove_item(list, item_name)
  list.delete(item_name)
  print_pretty_list(list)
end


def update_quantity(list, item_name, new_quantity)
  list[item_name] = new_quantity
  print_pretty_list(list)
end


def print_pretty_list(list)

  list.each_with_index do |item, index|
    puts "#{index + 1} #{item[0]}  = #{item[1]}"
  end

end

# test method calls
shopping_list = create_list("lemonade tomatoes onions ice")
remove_item(shopping_list, "lemonade")
update_quantity(shopping_list, "tomatoes", 3)
update_quantity(shopping_list, "ice", 4)
print_pretty_list(shopping_list)