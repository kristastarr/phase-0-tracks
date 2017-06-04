// Write a function that takes an array of words 
// and returns the longest word or phrase in the array:

// user passes in an array of strings
// need to measure the length of each string
// create a variable called "longest string" and make it an empty string
// loop through the array and if the length of the string is longer 
// than the string called "longest string", 
// reassign the value of that string as the new value for "longest string"
// after looping through the entire array, print the "longest string"



function findLongestString(array){
	var longestString = "";
	
	for (var i = 0; i < array.length; i ++){

		if (array[i].length > longestString.length){
			longestString = array[i];
		}; 
	};

	return longestString;
}


// Write a function that takes two objects and checks to see 
// if the objects share at least one key value pair:

// first compare object keys- 
// if object keys do not match, return false
// if object keys match, then check object values 
// if object values also match, return true


var match; 
function checkMatch(object1, object2){
var match; 
	for (var key in object1){
	  
		for (var k in object2){
				if (key == k){
				   if (object1[key] == object2[k]){
			        match = true; 
					 }
				}
		}		
	}	
	if (match === true){return true;
	}
	else {return false}
}

// Write a function that takes an integer and returns an array of the strings
// at a given length (ex input: 3, returns an array of 3 words)
// The words should vary randomly in length (1 - 10 letters): 


/// Create a "Create Array" function that takes a number - the number of words wanted in the array 
// This number will specify how many times the "Create Word" function runs 
// The Creat Array function will contain an empty array 

// Within the "Create Word" function 
// Create a function to generate a random number (between one and ten)
// The random number will be the length of the random word- 
// Pass the random number into another function that generates random letters = to the length of the random word
// The function pushes those letters into a random word (string)
// At the end of the loop, the new random word gets pushed into the empty array 
// When the loop has run the specified number of times, the function returns the new array 

 function createArray(wordsNeeded){
 	newArray = [];

 	while(wordsNeeded > 0){  

		var numLetters = Math.floor(Math.random()* 10 + 1);
		var alphabet = "abcdefghijklmnopqrstuvwxyz";
		var randomWord = "";

	function  randomWordMaker(wordLength){
  		while(wordLength > 0){
    	var randomLetterIndex = (Math.floor(Math.random() * alphabet.length));
    	var randomLetter = alphabet[randomLetterIndex];
    	randomWord = randomWord + randomLetter;
    
    	wordLength = wordLength - 1;
 		 }
		
		newArray.push(randomWord)
	}

	randomWordMaker(numLetters)
	wordsNeeded = wordsNeeded - 1;
	}

	return newArray
}

//Driver Code 

// var words = ["long phrase", "longer phrase", "longest phrase"];
// var words2 = ["hello", "hi there", "good morning", "hi"];
// var animals = ["dog", "kitten", "horse", "guinea pig", "fish"];

// findLongestString(words);
// findLongestString(words2);
// findLongestString(animals);


// var nephew1 = {name: "Ivan", age: 5};
// var nephew2 = {name: "Oscar", age: 1};
// var niece = {age: 5, name: "Marley"};
// var nephews = {1: "Ivan", 2: "Oscar"};
// var foods = {apples: 6, bananas: 5};
// var data = {name: "Ivan", date: "June 3"};


// console.log(checkMatch(nephew1, nephew2));
// console.log(checkMatch(nephew1, niece));
// console.log(checkMatch(nephew1, nephews));
// console.log(checkMatch(nephew1, foods));
// console.log(checkMatch(data, nephew1));


// Add driver code that does the following 10 times: generates an array, 
sampleArray = createArray(10)
// prints the array, 
console.log(sampleArray)
// feeds the array to your "longest word" function,
test1 = findLongestString(sampleArray)
//  and prints the result.
console.log(test1)

console.log(findLongestString(createArray(8)))







