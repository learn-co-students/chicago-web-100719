import React from 'react';
import logo from './logo.svg';
import './App.css';
import TodosContainer from './TodosContainer'

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <TodosContainer />
      </header>
    </div>
  );
}

export default App;
