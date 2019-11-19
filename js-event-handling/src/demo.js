// // document.addEventListener("DOMContentLoaded", () => {
  // // const list = document.querySelector('#tasks')
  // // const form = document.querySelector('form')
  // // form.addEventListener('submit', (e) => {
    // // e.preventDefault();
    // // const newTask = document.querySelector('#new-task-description').value
    // // if (newTask === '') {return}
    // // const newTaskEl = document.createElement('li')
    // // newTaskEl.innerHTML = newTask + ' - <span class="remove-task">X</span>'
    // // list.append(newTaskEl)
  // // })

  // // list.addEventListener('click', (e) => {
    // // if (e.target.className === 'remove-task') {
      // // e.target.parentNode.remove()
    // // }
  // // })
// // });


// class List {
  // constructor(event){
    // this.tasks = [];
    // this.listElement = document.querySelector('#tasks')
    // this.intializeRemoveTaskListener()
  // }

  // addTask(newTask){
    // this.tasks.push(newTask)
    // this.reRender();
  // }

  // intializeRemoveTaskListener(){
    // this.listElement.addEventListener('click', (e) => {
      // if (e.target.className === 'remove-task') {
        // this.tasks = this.tasks.filter((task) => {
           // return task.element !== e.target.parentNode
        // });
        // this.reRender()
      // }
    // })
  // }

  // reRender(){
    // this.listElement.innerHTML = '';
    // this.tasks.forEach((task)=>{ this.listElement.append(task.element)})
  // }
// }

// class Task {
  // constructor(event){
    // this.element = this.createElement();
  // }

  // createElement(){
    // const newTask = document.querySelector('#new-task-description').value
    // const newTaskEl = document.createElement('li')
    // newTaskEl.innerHTML = newTask + ' - <span class="remove-task">X</span>'
    // return newTaskEl;
  // }
// }

// document.addEventListener("DOMContentLoaded", () => {
  // const form = document.querySelector('form')
  // const TaskList = new List();

  // form.addEventListener('submit', (e) => {
    // e.preventDefault();
    // const newTask = new Task(e);
    // TaskList.addTask(newTask);
  // })
// });

