// Use Javascript to manipulate the DOM 
var headings = document.getElementsByTagName("h1");
heading1 = headings[0]
heading1.style.border = "5px dotted grey";

// Add an event listener 

// function addPinkBorder(event) {
//   console.log("click happened! here's the click event:");
//   console.log(event);
//   event.target.style.border = "2px solid pink";
// }

// var photo = document.getElementById("pets-photo");
// photo.addEventListener("click", addPinkBorder);


function changeBackgroundPink(){
	event.target.style.backgroundColor = "DeepPink";
};

function changeBackgroundTeal(){
	event.target.style.backgroundColor = "DarkTurquoise";
}

var strong = document.getElementsByTagName("em");

strongWord = strong[0]
strongWord.addEventListener("click", changeBackgroundPink);


strongWord2 = strong[1]
strongWord2.addEventListener("mouseover", changeBackgroundTeal)

