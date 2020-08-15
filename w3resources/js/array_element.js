// Write a JavaScript function to get the first element of an array. Passing a parameter 'n' will return the first 'n' elements of the array.


const arrCheck = (arr, x = 0) => {
  return arr[x] == undefined ? [] : arr[x];
}


console.log(arrCheck([7, 9, 0, -2]));
console.log(arrCheck([7, 9, 0, -2], 2));
console.log(arrCheck([], 3));