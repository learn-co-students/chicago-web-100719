function main(){
  window.addEventListener('DOMContentLoaded', function(){
    fetchBooks()
    addFormListener()
  })
}

function addFormListener(){
  const bookForm = document.getElementById('book-form')
  bookForm.addEventListener('submit', function(event){
    event.preventDefault()
    const formData = {
      title: event.target[0].value,
      author: event.target[1].value
    }
    postBook(formData)
    clearForm(event.target)
  })
}

function clearForm(form){
  form[0].value = ''
  form[1].value = ''
}


function postBook(formData){
  const reqObj = {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json'
    },
    body: JSON.stringify(formData)
  }

  fetch('http://localhost:3000/books', reqObj)
    .then(resp => resp.json())
    .then(data => {
      renderBook(data)
    })
}

function fetchBooks(){
  fetch('http://localhost:3000/books') 
  .then(resp => resp.json())
  .then(books => {
    renderBooks(books)
  })
}

function renderBooks(books){
  books.forEach(bookObj => {
    renderBook(bookObj)
  })
}

function renderBook(bookObj){
  const bookListDiv = document.getElementById('book-list')

  const liEl = document.createElement('li')
  liEl.innerText = `${bookObj.title} - ${bookObj.author}`
  bookListDiv.append(liEl)
}






main()
