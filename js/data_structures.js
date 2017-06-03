// Create an array
var colors = ["pink", "orange", "teal", "avocado green"]
var horses = ["Thunder", "Angel", "Sport", "Sister"]

colors.push("lavender")
horses.push("Chloe")

// console.log(colors)
// console.log(horses)

// Create an object
colorful_horses = []

for (var i = 0; i < horses.length; i++) {
	// console.log(horses[i]);
	// console.log(colors[i]);
	colorful_horses[horses[i]] = colors[i];
	
	};

// console.log(colorful_horses);

// Create a constructor 

function Car(make, model, speed, convertible){

	console.log("My new car:")

	this.make = make;
	this.model = model;
	this.current_speed = speed;
	this.is_convertible = convertible;

	this.accelerate = function(speed) {
		this.current_speed = speed; 
		};
}

car1 =  new Car("Fiat", "500c", 0, true)
console.log(car1)

car1.accelerate(75)

console.log(car1)
