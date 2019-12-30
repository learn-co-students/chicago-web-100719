import React from 'react';
import Navbar from './Navbar';
import PaintingList from './PaintingList';
import PaintingShow from './PaintingShow';

import Counter from './Counter';
import About from './About';

import { Route, Switch } from 'react-router-dom'

const App = () => {
  return (
    <div className="App">
      <Navbar icon="paint brush" title="Painterest" description="out app" />

      <Switch>
        <Route path="/about" component={About} />
        <Route path="/" component={PaintingList} />
      </Switch>
    </div>
  );
};

export default App;


// how to pass props
// exact
//
