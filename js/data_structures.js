var colors = ["pink", "orange", "teal", "avocado green"]
var horses = ["Thunder", "Angel", "Sport", "Sister"]

colors.push("lavender")
horses.push("Chloe")

// console.log(colors)
// console.log(horses)

colorful_horses = []

for (var i = 0; i < horses.length; i++) {
	// console.log(horses[i]);
	// console.log(colors[i]);
	colorful_horses[horses[i]] = colors[i];
	
	};

console.log(colorful_horses);