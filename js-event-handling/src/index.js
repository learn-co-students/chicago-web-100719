const ulEl = document.querySelector('ul')
const formEl = document.getElementById('create-task-form')

document.addEventListener('DOMContentLoaded', function(){

  formEl.addEventListener('submit', handleFormSubmit)
  ulEl.addEventListener('click', handleDelete)
})


function handleFormSubmit(event){
    e.preventDefault()
    const input = e.target[0].value
    e.target.reset()


    const liEl = document.createElement('li')
    liEl.innerText = input

    const deleteBtn = document.createElement('button')
    deleteBtn.innerText = 'Remove'
    deleteBtn.className = 'removeButton'  
    liEl.append(deleteBtn)
    ulEl.append(liEl)
}


function handleDelete(event){
    if (event.target.className === 'removeButton') {
      event.target.parentNode.remove()
    }
}



