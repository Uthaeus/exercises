// 1. Write a JavaScript program to display the current day and time in the following format.  Go to the editor
// Sample Output : Today is : Tuesday.
// Current time is : 10 PM : 30 : 38


function getCurrentTime() {
  let today = new Date();
  let day = today.getUTCDay();
  let hour = today.getHours();
  let minute = today.getMinutes();
  let seconds = today.getSeconds();
  let sig;
  let days = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'];

  if (hour > 11) { 
    sig = 'PM'; 
  } else {
    sig = 'AM';
  }

  if (hour > 12) {
    hour = hour - 12;
  }

  return  `Today is : ${days[day]}.\nCurrent time is : ${hour} ${sig} : ${minute} : ${seconds}`
}

console.log(getCurrentTime());