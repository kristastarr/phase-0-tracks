console.log("The script is running!");

function addPinkBorder(event) {
  console.log("click happened! here's the click event:");
  console.log(event);
  event.target.style.border = "2px solid pink";
}

var strong = document.getElementsByTagName("strong");

var strongWord = strong[0];

function changeBackground(){
	event.target.style.backgroundColor = "pink";
};

strongWord.addEventListener("click", changeBackground);

var photo = document.getElementById("lizard-photo");


function changeBorderColor(){
	event.target.style.borderStyle = "solid"
	event.target.style.borderColor = "pink"
	event.target.style.bordorWidth =  "8px"
};

photo.addEventListener("click", changeBorderColor)

