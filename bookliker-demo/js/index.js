function fetchBooks(){
  // make fetch request
  // loop through book array
  // render each book
  fetch('http://localhost:3000/books')
    .then(resp => resp.json())
    .then(books => renderBooks(books))
}


function renderBooks(books){
  books.forEach(function(book){
    renderBook(book)
  })
}

function renderBook(book){
    const ulElement = document.querySelector('#list')
    const liElement = document.createElement('li')
    liElement.innerText = book.title
    liElement.dataset.id = book.id

    ulElement.append(liElement)
}

function createBookListener(){
  const ulElement = document.querySelector('#list')
  ulElement.addEventListener('click', function(e){
    fetchSingleBook(e.target.dataset.id)
  })
}

function fetchSingleBook(id) {
  fetch(`http://localhost:3000/books/${id}`)
    .then(resp => resp.json())
    .then(book => {
      renderBookShow(book)
    })
}

function renderBookShow(book) {

  const showPanel = document.querySelector('#show-panel')
  showPanel.innerHTML = ''

  const h2Element = document.createElement('h2')
  h2Element.innerText = book.title

  const imgElement = document.createElement('img')
  imgElement.src = book.img_url

  const pElement = document.createElement('p')
  pElement.innerText= book.description

  const btnElement = document.createElement('button')
  btnElement.innerText= 'read'

  ulElement = document.createElement('ul')
  ulElement.className = 'user-list'
  book.users.forEach(function(user){
    const liElement = document.createElement('li')
    liElement.innerText = user.username
    ulElement.append(liElement)
  })

  showPanel.append(h2Element, imgElement, pElement, btnElement, ulElement)

  createLikeListener(btnElement, book)
}

function createLikeListener(btnElement, book){
  btnElement.addEventListener('click', function(e){
    const newUsers = book.users
    const pourusExists = newUsers.find(user => user.username === 'pourus')

    if (pourusExists) {
      return
    }

    newUsers.push({id: 1, username: 'pourus'})
    const reqObj = {
      method: 'PATCH', 
      headers: { 'Content-Type': 'application/json'},
      body: JSON.stringify({ users: newUsers})
    }

    fetch(`http://localhost:3000/books/${book.id}`, reqObj)
      .then(resp => resp.json())
      .then(data => {
        const userList = document.querySelector('.user-list')
        const liElement = document.createElement('li')
        liElement.innerText = 'pourus'
        userList.append(liElement)
        e.target.remove()
      })
  })
}

function main(){
  document.addEventListener("DOMContentLoaded", function() {
    fetchBooks()
    createBookListener()
    // get all the books
    // watch for clicks on book lis
    //
  });
}


main()













