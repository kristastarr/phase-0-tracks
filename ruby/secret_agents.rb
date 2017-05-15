# Encrypt Method
# Input- a string provided by the user 
# Iterate through each letter of the word. Change the letter to the letter immediately following it in the alphabet. 
# Output - a new string

def encrypt(str)
  index = 0
  length = str.length
  encrypted_str = ""
  
  while index < length
    if str[index] == "z"
      encrypted_str << "a"
    elsif str[index] == " "
      encrypted_str << " "
    else
      encrypted_str << str[index].next
    end
    index += 1
  end
  return encrypted_str
end

#print encrypt("abc") return "bcb"
#print encrypt("zed") return "afe"


# Decrypt Method 
# Input - a string provided by the user
# For each letter in the string identify the index of that letter in the alphabet string 
# Then subtract one from the index of the alpahbet string and print the letter at that index
# Output - a new string

def decrypt(str)
  index = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz" 
  decrypt_str = ""
  
  while index < str.length
    alphabet_index = alphabet.index(str[index])
    decrypted_letter_index = alphabet_index - 1
    decrypt_str << alphabet[decrypted_letter_index]
    index += 1
  end 
  
  return decrypt_str
end
#print decrypt(encrypt("swordfish"))

#decrypt("bcb") return "abc"
#decrypt("afe") return "zed"


#--------------------tests----------------------------------

#print "encrypt expect to equal txpsegjti ", encrypt("#swordfish")

#puts 

#print "decrypt expect to equal swordfish ", decrypt("#txpsegjti")

#print "decrypt expect to equal swordfish ", 

#--------------------tests----------------------------------

# Ask the user if they would like to decrypt or encrypt a password
puts "Would you like to encrypt or decrypt your password: "
user_answer = gets.chomp

# Get password info from user
puts "Enter password: "
password = gets.chomp

# Use the if/elsif/else statment to direct the user info to the proper output.
if user_answer == "encrypt"
  puts "#{encrypt(password)}"
elsif user_answer == "decrypt"
  puts "#{decrypt(password)}"
  else
    puts "invalid entry"
end