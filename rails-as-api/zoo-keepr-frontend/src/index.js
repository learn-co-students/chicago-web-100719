function fetchAnimals(){
  fetch('http://dev.facebook.com/animals')
    .then(resp => resp.json())
    .then(animals => {
      animals.forEach(animalObj => {
        renderAnimal(animalObj)
      })
    })
}

function renderAnimal(animalObj) {
  tBody = document.querySelector('tbody')
  const animalHTML = createAnimalHTML(animalObj)
  tBody.insertAdjacentHTML('beforeend', animalHTML)
}


function createAnimalHTML(animalObj) {
  return (`<tr><td>${animalObj.name}</td><td>${animalObj.gender}</td><td>${animalObj.species_id}</td></tr>`)
}

function addFormListener() {
  const form = document.getElementById('animal-form')
  form.addEventListener('submit', function(e){
    e.preventDefault()
    const formData = grabFormData(e)

    const reqObj = {
      method: 'POST',
      headers: { 
        'Content-Type': 'application/json',
        'Accept': 'application/json' 
      },
      body: JSON.stringify(formData)
    }
    
    fetch('http://localhost:3000/animals', reqObj)
    .then(resp => resp.json())
    .then(animalObj => {
      renderAnimal(animalObj)
    })
  })
}

function grabFormData(e){
  return {
    name: e.target[0].value,
    gender: e.target[1].value,
    species: e.target[2].value
  }
}





function main(){
  document.addEventListener('DOMContentLoaded', function(){
    fetchAnimals()
    addFormListener()
  })
}

main()
