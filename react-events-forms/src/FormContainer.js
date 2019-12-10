import React from 'react'

class FormContainer extends React.Component {
  constructor(props){
    super(props)
    this.state = {
      showForm: false,
      task: ''
    }
  }

  handleShowForm = () => {
    this.setState({
      showForm: true
    })
  }

  handleTaskUpdate = (event) =>{
    this.setState({
      task: event.target.value
    })
  }

  handleSubmit = (event) => {
    event.preventDefault()
    this.props.addTodo(this.state.task)
    this.setState({
      task: ''
    })

  }


  renderForm = () => {
    return <form onSubmit={this.handleSubmit}> 
        <input onChange={this.handleTaskUpdate} type='text' value={this.state.task}/>
        <input type='submit' />
      </form>
  }

  render(){
    return <div>
      {
        this.state.showForm ?  this.renderForm() : <button onClick={this.handleShowForm}>Add a New Todo</button>
      }
    </div>
  }
}

export default FormContainer


