import React from 'react'
import FormContainer from './FormContainer'
import Todos from './Todos'


class TodosContainer extends React.Component {
  constructor(props){
    super(props)
    this.state = {
      todos: []
    }
  }

  addTodo = (task) => {
    this.setState({
      todos: [...this.state.todos, {task: task, completed: false}]
    })
  }


  render(){
    return <div>
      <FormContainer addTodo={this.addTodo} />
      <Todos todos={this.state.todos} />
    </div>
  }
}

export default TodosContainer
