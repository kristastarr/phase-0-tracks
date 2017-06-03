//Make a function to reverse the letters in a string
// make a function that takes a string
// make a new variable to assign the reversed string to
// start at the end of the string and push each letter to the new string
// move backwards through the string pushing each letter to the new string

    
   function reverseString(word){
     newString = ""
     for (var i = word.length - 1; i >= 0; i--) { 
        newString += word[i]; 
    }
    
    return newString
    }
    
    // console.log(reverseString("Hey there"))

    newWord = reverseString("Goodbye")
 
    if (1 == 1) { 
   console.log(newWord)     
    }
    
    
