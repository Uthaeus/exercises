// Write a JavaScript program to compute the sum and product of an array of integers.


let a = [3, 5, 7, 5];


const sums = arr => {
  return arr.reduce((a, b) => a += b);
}

const prod = arr => {
  return arr.reduce((a, b) => a *= b);
}


console.log(sums(a));
console.log(prod(a));