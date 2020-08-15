// Write a JavaScript program to find the most frequent item of an array.


var arr1=[3, 'a', 'a', 'a', 2, 3, 'a', 3, 'a', 2, 4, 9, 3];


const most = arr => {
  let lib = {};

  for (let x = 0; x < arr.length; x++) {
    if (lib[arr[x]]) {
      lib[arr[x]]++;
    } else {
      lib[arr[x]] = 1;
    }
  }

  let entries = Object.entries(lib);
  let values = Object.values(lib);

  let marker = NaN;
  for (let x = 0; x < values.length; x++) {
    let largest = 0;
    if (values[x] > largest) {
      largest = values[x];
      marker = x;
    }
  }
  return entries[marker][0]
}


console.log(most(arr1));