
const intro = () => {
    let el = document.getElementById('introBoard');
    let tagg = document.createElement('p');
    let text = document.createTextNode("Welcome to tictactoe");

    tagg.appendChild(text);
    console.log(text);
    console.log(tagg); 
    el.appendChild(tagg);
}

const board = [];

const newBoard = (arr) => {

    for (let x = 0; x < 9; x++) {
        arr.push(createTile(x));
    }
}


const createTile = (x, value = ' ') => {
    let id = x;
    let val = value;
    
    return [id, val]
}

const disp = (arr) => {
    for (let x = 0; x < arr.length; x++) {
        let element = document.getElementById('gameBoard');
        let tempTag = document.createElement('div');
        let content = document.createTextNode(`${arr[x][1]}`);

        tempTag.appendChild(content);
        
        element.appendChild(tempTag);
    }
    
}

intro();