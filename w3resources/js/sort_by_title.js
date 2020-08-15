// Write a JavaScript function to sort the following array of objects by title value


var library = [ 
   { author: 'Bill Gates', title: 'The Road Ahead', libraryID: 1254},
   { author: 'Steve Jobs', title: 'Walter Isaacson', libraryID: 4264},
   { author: 'Suzanne Collins', title: 'Mockingjay: The Final Book of The Hunger Games', libraryID: 3245}
   ];


const sorter = lib => {
  let result = lib.sort((a, b) => {
    return a['title'] > b['title']
  });

  return result;
}


console.log(sorter(library));