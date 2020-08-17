
const intro = () => {
    let el = document.getElementById('introBoard');
    let tag = document.createElement('p');
    let text = document.createTextNode("Welcome to tictactoe");

    tag.appendChild(text);
    el.appendChild(tag);
}

const newBoard = () => {

    for (let x = 0; x < 3; x++) {
        for (let y = 0; y < 3; y++) {
            createTile(x, y);
        }
    }
}


const createTile = (x, y, value = '') => {
    let props = [{
        x : x,
        y : y,
        value : value
    }];
    
}

intro();