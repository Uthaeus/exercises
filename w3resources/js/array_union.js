// Write a JavaScript program to compute the union of two arrays. Go to the editor
// Sample Data :
// console.log(union([1, 2, 3], [100, 2, 1, 10]));
// [1, 2, 3, 10, 100]


const union = (arr1, arr2) => {
  let temp = arr1.concat(arr2);
  let result = [];

  for (let x = 0; x < temp.length; x++) {
    if (!(result.includes(temp[x]))) {
      result.push(temp[x]);
    }
  }
  result = result.sort((a, b) => a > b);

  return result;
}



console.log(union([1, 2, 3], [100, 2, 1, 10]));
