// Write a JavaScript program to sort the items of an array. Go to the editor
// Sample array : var arr1 = [ 3, 8, 7, 6, 5, -4, 3, 2, 1 ];
// Sample Output : -4,-3,1,2,3,5,6,7,8


var arr1 = [ 3, 8, 7, 6, 5, -4, 3, 2, 1 ];

const sorter = arr => {

  let looper = true;
  let count = 0;
  
  while (looper == true) {
    let switches = 0;


    for (let x = 0; x < arr.length - 1; x++) {
      if (arr[x] > arr[x + 1]) {
        [arr[x], arr[x + 1]] = [arr[x + 1], arr[x]];
        switches++;
      }
      count++;
    }
    if (switches == 0) {
      looper = false;
    }
    console.log(switches, count);
  }
  return arr;
}


console.log(sorter(arr1));