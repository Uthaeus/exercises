// Write a JavaScript program where the program takes a random integer between 1 to 10, the user is then prompted to input a guess number. If the user input matches with guess number, the program will display a message "Good Work" otherwise display a message "Not matched". 


const guessGame = () => {
  let gameplay = 'y';

  while (gameplay == 'y') {
    console.log('Welcome to the guessing game');

    console.log("\n\n\n\n\n\n\n\n\nPlease enter a guess, a number between 1 and 10");

    let guess = readline();
    let num = Math.floor(Math.random() * 10) + 1;

    if (guess == num) {
      console.log("YYYYYYYYEEEEEEEEEESSSSSSS!!!!!!!!!");
    } else {
      console.log("Pfffffttttttt");
    }
    console.log("\n\n\n\n\n\n\n\nplay again?");
    gameplay = readline();
  }
  console.log('play again');

}

guessGame();