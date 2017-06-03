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



