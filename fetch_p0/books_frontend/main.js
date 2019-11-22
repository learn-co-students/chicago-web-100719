
function fetchBookData(){
  fetch('http://localhost:3000/books')
    .then(resp => resp.json())
    .then(bookObjects => {
      renderBooks(bookObjects)
    })
}

function renderBooks(bookObjects){
  bookObjects.forEach(bookObj => {
    renderBook(bookObj)
  })
}

function renderBook(bookObj) {
  const bookList = document.getElementById('book-list')
  const pElement = document.createElement('p')
  pElement.innerText = `${bookObj.title} - ${bookObj.author}`
  bookList.append(pElement)
}


function createFormListener(){
  const formEl = document.getElementById('book-form')
  formEl.addEventListener('submit', function(event){
    event.preventDefault()
    const formData = {
      title: event.target[0].value,
      author: event.target[1].value
    }

    event.target.reset()

    postBookData(formData)
  })
}

function postBookData(formData) {
    const reqObj = {
      method: "POST", 
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(formData)
    }

    fetch('http://localhost:3000/books', reqObj)
      .then(resp => resp.json())
      .then(bookObj => {
        renderBook(bookObj)
      })
}


function main(){
  document.addEventListener('DOMContentLoaded', function(){
    fetchBookData()
    createFormListener()
  })
}



main()
