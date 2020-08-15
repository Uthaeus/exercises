// Write a JavaScript program which accept a number as input and insert dashes (-) between each two even numbers. For example if you accept 025468 the output should be 0-254-6-8. 


const dasher = arr => {
  let newArr = arr.toString().split('').map(a => +a);
  let result = [];

  for (let x = 0; x < newArr.length; x++) {
    if (newArr[x] % 2 == 0 && newArr[x + 1] % 2 == 0) {
      result.push(newArr[x]);
      result.push('-');
    } else {
      result.push(newArr[x]);
    }
  }

  return result.join('');
}



console.log(dasher([148977522142]))