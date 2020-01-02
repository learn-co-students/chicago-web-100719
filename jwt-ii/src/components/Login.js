import React from 'react';
import { connect } from 'react-redux'
import { loginSuccess } from '../actions/index'

class Login extends React.Component {
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

  handleLogin = (event) =>{
    event.preventDefault()
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
      if(data.error) {
        alert('invalid credentials')
      } else {
        localStorage.setItem('token', data.token)
        this.props.loginSuccess(data)
        this.props.history.push('/about')

        // dispatch a action for succesful login
        // reroute to the about page
      }
    })
  }

  render(){
    console.log(this.props)
    return (
      <div>
        <h3>Sign in</h3>
        <form onSubmit={this.handleLogin}>
          <input name={'username'} onChange={(e) => this.handleInputChange(e)} value={this.state.username} />
          <input name={'password'} onChange={(e) => this.handleInputChange(e)} value={this.state.password} />
          <input type='submit' value='login' />
        </form>
      </div>
    );
  }
}

const mapDispatchToProps = (dispatch) => {
  return {
    loginSuccess: (user) => { dispatch(loginSuccess(user)) }
  } 
}



export default connect(null, mapDispatchToProps)(Login)



