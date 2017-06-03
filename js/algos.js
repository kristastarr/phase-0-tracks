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

	console.log(longestString);
}

var words = ["long phrase", "longer phrase", "longest phrase"];
var words2 = ["hello", "hi there", "good morning", "hi"];
var animals = ["dog", "kitten", "horse", "guinea pig", "fish"];

findLongestString(words);
findLongestString(words2);
findLongestString(animals);






