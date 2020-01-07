import React from 'react';
import '../App.css';
import { loginSuccess } from '../actions/index'
import { connect } from 'react-redux'

class Admin extends React.Component {
  constructor(props){
    super(props)
    this.state = {
      username: 'raza',
      password: 'hello',
    }
  }

  handleInputChange(e){
    this.setState({
      [e.target.name]: e.target.value
    })
  }

  handleLogin = (e) => {
    e.preventDefault()
    const reqObj = {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(this.state)
    }

    fetch('http://localhost:3000/api/v1/auth', reqObj)
    .then(resp => resp.json())
    .then(data => {
      if (data.error) {
        alert('invalid credentials')
      } else {
        console.log(data)
        localStorage.setItem('token', data.token)
        this.props.loginSuccess(data)
        this.props.history.push('/dashboard')
      }
    })
  }
  
  render(){
    console.log(this.props)
    return (
      <div>
        <header className="App-header">
          <form onSubmit={this.handleLogin}>
            <input name={'username'} onChange={(e) => this.handleInputChange(e)} value={this.state.username} /><br/>
            <input name={'password'} onChange={(e) => this.handleInputChange(e)} value={this.state.password} /><br/>
            <input type='submit' value='login' />
          </form>
        </header>
      </div>
    );
  }
}

const mapDispatchToProps = (dispatch) => {
  return {
    loginSuccess: (user) => {
      dispatch(loginSuccess(user))
    }
  }
}




export default connect(null, mapDispatchToProps)(Admin);








