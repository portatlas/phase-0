// Psuedocode
// get a list of items to add to the origin list and give a default item of 1
// allow user to update the quanity of items
// allow users to delete items

var groceryList = {};

function myFunction() {
    var item = prompt("What would you like to buy? Enter items seperated w/ comma w/o spaces", "apple,orange,pear").split(",");

    for (var i = 0; i < item.length; i += 1) {
      groceryItem = (item[i]);
      groceryList[groceryItem] = 1;
    };
    console.log(groceryList);

    displayList()
}

function updateFunction(){
    var updateItem = prompt("What item would you like to update?")
    var updateQuant = prompt("How many do you need?")
    groceryList[updateItem] = parseInt(updateQuant)
        console.log(groceryList);

    clearList()
    displayList()

}

function deleteFunction(){
    var deleteItem = prompt("What item do you want to remove from your list?")
    delete groceryList[deleteItem]

    clearList()
    displayList()

}

function clearList(){
    document.getElementById("grocery-list").innerHTML = " ";
}

function displayList(){
    for (var key in groceryList){
        if (groceryList.hasOwnProperty(key)){
        document.getElementById("grocery-list").innerHTML += key + " : " + groceryList[key] + "<br />";
      }
    }
}

// What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
// In this assignment I used JavaScript to create the list in the DOM and make the list change. Additionally, I solidified my knowledge on creating and passing inputs to function.s

// What was the most difficult part of this challenge?
// The most difficult part of this challenge was to get the full list to display to the html page. I was able to get the last item to the html page but not the full list. I had to do some more research to figure it out.

// Did an array or object make more sense to use and why?
// An object made more sense as I could use the name value pair to correspond to the item and quanity.




