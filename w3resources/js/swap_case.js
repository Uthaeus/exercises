// Write a JavaScript program which accept a string as input and swap the case of each character. For example if you input 'The Quick Brown Fox' the output should be 'tHE qUICK bROWN fOX'


let test = 'The Quick Brown Fox';


const switcher = str => {
  let result = '';

  for (let x = 0; x < str.length; x++) {
    if (str.charCodeAt(x) >= 65 && str.charCodeAt(x) <= 90) {
      result += str[x].toLowerCase();
    } else if (str.charCodeAt(x) >= 97 && str.charCodeAt(x) <= 122) {
      result += str[x].toUpperCase();
    } else {
      result += str[x];
    }
  }
  return result;
}


console.log(switcher(test));