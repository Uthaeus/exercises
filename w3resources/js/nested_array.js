// Write a JavaScript program which prints the elements of the following array


var a = [[1, 2, 1, 24], [8, 11, 9, 4], [7, 0, 7, 27], [7, 4, 28, 14], [3, 10, 26, 7]];


const nested = arr => {
  for (let x = 0; x < arr.length; x++) {
    console.log(`row ${x}`);
    for (let y = 0; y < arr[x].length; y++) {
      console.log(arr[x][y]);
    }
  }
}


console.log(nested(a));