// Write a JavaScript program to get the current date


function getCurrentDate() {
  let today = new Date();

  let mm = String(today.getMonth() + 1).padStart(2, '0');
  let dd = String(today.getDate()).padStart(2, '0');
  let yyyy = today.getFullYear();

  return mm + '/' + dd + '/' + yyyy;
}


console.log(getCurrentDate());