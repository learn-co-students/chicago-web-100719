import React from 'react';
import './App.css';
import Foo from './Foo'

class WelcomeContainer extends React.Component {
  render(){
    return (
      <div>
        <button onClick={this.props.handleNumberChange}>change number</button>
        <p>Your number is: {this.props.number}</p>
        <Foo />
      </div>
    );
  }
}

export default WelcomeContainer;
