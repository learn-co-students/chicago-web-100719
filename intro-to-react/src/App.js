import React from 'react';
import logo from './logo.svg';
import './App.css';
import WelcomeContainer from './WelcomeContainer'

class App extends React.Component {
  constructor(props){
    super(props)
    this.state = {
      number: 12121
    }
  }

  handleNumberChange = () => {
    const newNum = Math.random() * 100
    this.setState({
      number: newNum
    })
  }


  render(){
    return (
      <div className="App">
        <header className="App-header">
          <WelcomeContainer 
            handleNumberChange={this.handleNumberChange} 
            number={this.state.number} /> 
        </header>
      </div>
    );
  }
}

export default App;
