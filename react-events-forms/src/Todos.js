import React from 'react'

class Todos extends React.Component {
  renderTodos = () => {
    return this.props.todos.map(todoObj => {
      return <li>{todoObj.task}</li>
    })
  }

  render(){
    return <div>
      <h3>My Todos</h3>
      { this.renderTodos() }
     </div>
  }
}

export default Todos 
