
# get user input in the form of a string 
# go through every letter of the string and apply a change to each letter
# (make the letter the next letter using of the alphabet .next)
# return all the letters as a new string

def encrypt(str)

index = 0
  while index < str.length 
   new_letter = str[index].next
   puts new_letter
 index += 1
 end 
end 

 encrypt ("")
 