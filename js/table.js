let buttons =document.getElementsByClassName('btn')
for (let i = 0; i<buttons.length ; i++ ){
  buttons[i].addEventListener('click', () => {
    console.log(buttons[i].textContent)
    buttons[i].classList.add("selected--seat")
    buttons[i].innerHTML="TABLE RESERVED"


  })
} 
