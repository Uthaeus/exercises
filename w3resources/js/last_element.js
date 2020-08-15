// Write a JavaScript function to get the last element of an array. Passing a parameter 'n' will return the last 'n' elements of the array.


const last = (arr, x = 0) => {
  let total = arr.length;

  if (x != 0) {
    let ind = total - x;

    return arr.slice(ind, total);
  } else {
    return [arr[total - 1]]
  }
}


console.log(last([7, 9, 0, -2]))
console.log(last([7, 9, 0, -2], 3))