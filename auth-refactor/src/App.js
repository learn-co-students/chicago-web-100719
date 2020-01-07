import React from 'react';
import logo from './logo.svg';
import './App.css';
import { BrowserRouter, Route } from 'react-router-dom';
import Home from './components/Home'
import Admin from './components/Admin'
import Dashboard from './components/Dashboard'

function App() {
  return (
    <BrowserRouter>
      <Route exact path='/admin' component={Admin} />
      <Route exact path='/dashboard' component={Dashboard} />
      <Route exact path='/' component={Home} />
    </BrowserRouter>
  );
}

export default App;
