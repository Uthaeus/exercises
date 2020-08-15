// Write a JavaScript program to find a pair of elements (indices of the two numbers) from an given array whose sum equals a specific target number.


const finder = (arr, target) => {
  let result = [];

  for (let x = 0; x < arr.length - 1; x++) {
    for (let y = x + 1; y < arr.length; y++) {
      if (arr[x] + arr[y] == target) {
        result = [x, y];
      }
    }
  }
  return result;
}

let a = [10,20,10,40,50,60,70];
let t = 50;

console.log(finder(a, t));