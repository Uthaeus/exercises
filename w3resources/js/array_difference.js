// Write a JavaScript function to find the difference of two arrays


const difference = (arr1, arr2) => {
  let result = [];

  for (let x = 0; x < arr1.length; x++) {
    if (!(arr2.includes(arr1[x]))) {
      result.push(arr1[x]);
    }
  }
  for (let x = 0; x < arr2.length; x++) {
    if (!(arr1.includes(arr2[x]))) {
      result.push(arr2[x]);
    }
  }
  result = result.sort((a, b) => a > b);

  return result;
}


console.log(difference([1, 2, 3], [100, 2, 1, 10]));