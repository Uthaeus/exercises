$(document).ready(function() {

  // let num1 = document.querySelector('#num1').value;
  // let num2 = document.querySelector('#num2').value;
  // let output = document.querySelector('#out');
  

  var adder = document.getElementById('add');
  var subt = document.getElementById('sub');
  var multi = document.getElementById('mult');
  var divi = document.getElementById('div');
  adder.addEventListener('click', add);
  subt.addEventListener('click', sub);
  multi.addEventListener('click', mult);
  divi.addEventListener('click', div);

  function add() {
    let num1 = document.querySelector('#num1').value;
    let num2 = document.querySelector('#num2').value;
    let output = document.querySelector('#out');
    let result = +num1 + +num2;
    output.textContent = result;
  }

  function sub() {
    let num1 = document.querySelector('#num1').value;
    let num2 = document.querySelector('#num2').value;
    let output = document.querySelector('#out');
    var result = +num1 - +num2;
    output.textContent = result;
  }

  function mult() {
    let num1 = document.querySelector('#num1').value;
    let num2 = document.querySelector('#num2').value;
    let output = document.querySelector('#out');
    var result = +num1 * +num2;
    output.textContent = result;
  }

  function div() {
    let num1 = document.querySelector('#num1').value;
    let num2 = document.querySelector('#num2').value;
    let output = document.querySelector('#out');
    var result = +num1 / +num2;
    output.textContent = result;
  }
});