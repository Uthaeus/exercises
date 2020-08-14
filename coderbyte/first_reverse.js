// function FirstReverse(str) { 

//   return str.split('').reverse().join('');

// }
   
// // keep this function call here 
// console.log(FirstReverse(readline()));


function FirstFactorial(num) { 

  let arr = [];

  while (num > 0) {
    arr.push(num);
    num--;
  }

  return arr.reduce((a, b) => a *= b);

}
   
// keep this function call here 
console.log(FirstFactorial(4));