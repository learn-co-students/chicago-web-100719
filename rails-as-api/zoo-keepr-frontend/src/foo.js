function main () {
  document.addEventListener('DOMContentLoaded', () =>{
    getAnimals()
    addFormListener()
  })
}

function addFormListener() {
  formElement= document.querySelector('#animal-form')
  formElement.addEventListener('submit', (event) => {
    event.preventDefault()
    const formData = grabFormData(event)
    postAnimal(formData)
  })
}

function postAnimal(formData) {
  const reqObj = {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(formData)
  }

  fetch('http://localhost:3000/animals', reqObj)
    .then(resp => resp.json())
    .then(data => {
      // Pessimistic Rendering: render after we recieve a success response from opur backend
      renderAnimal(data.data)
    })
}

function renderAnimal(animalObj) {
  const animal = new Animal(animalObj)
  tBody = document.querySelector('tbody')
  tBody.insertAdjacentHTML( 'beforeend', animal.render());
}

function grabFormData(event) {
  const name = event.target[0].value
  const gender = event.target[1].value
  const species = event.target[2].value

  return {
    name,
    gender,
    species
  }
}

function getAnimals() {
  fetch('http://localhost:3000/animals')
    .then(resp => resp.json())
    .then(animals => {
      console.log('animals', animals)
      animals.data.forEach(animalObj => {
        renderAnimal(animalObj)
      })
    })
}



main()










