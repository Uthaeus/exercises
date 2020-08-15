// Write a JavaScript program to remove duplicate items from an array (ignore case sensitivity)


let a = [1, 2, 'a', 'A', 'b', 3, 1, 5, 'g'];

const remover = arr => {
  let result = [];

  for (let x = 0; x < arr.length; x++) {
    let temp = String(arr[x]).toLowerCase();
    if (!(result.includes(temp))) {
      result.push(temp);
    }
  }
  return result;
}


console.log(remover(a));