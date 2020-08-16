

// const getRating = arr => {
//   var averageRating;
//   let scoreList = [];

//   let reduced = arr.filter((v) => {
//     if (v['Director'] == 'Christopher Nolan') {
//       return +v['imdbRating'];
//     }
//   });

//   let stepTwo = reduced.map((a, b) => {
//     return +a['imdbRating'];
//   });

//   averageRating = stepTwo.reduce((a, b) => a += b) / stepTwo.length;

//   return averageRating;
// }



// console.log(getRating(watchList));




function whatIsInAName(collection, source) {
  var arr = [];
  
  console.log(collection.length);
  return arr;
}

console.log(whatIsInAName([{ first: "Romeo", last: "Montague" }, { first: "Mercutio", last: null }, { first: "Tybalt", last: "Capulet" }], { last: "Capulet" }));
