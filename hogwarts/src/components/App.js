import React, { Component } from 'react';
import '../App.css';
import Nav from './Nav'
import hogs from '../porkers_data';
import HogContainer from './HogContainer'
import Filter from './Filter'

class App extends Component {
  constructor(){
    const updatedHogs = hogs.map(hogObj => ({...hogObj, isHidden: false}))
    super()
    this.state = {
      hogs: updatedHogs,
      showGreased: false,
      orderBy: ''
    }
  }

  filterGreased = () => {
    this.setState({
      showGreased: !this.state.showGreased
    })
  }

  orderHogs= (e) => {
    this.setState({
      orderBy: e.target.value
    })
  }

  getHogs = () => {
    let hogs = this.state.hogs;
    console.log('1', hogs)
    hogs = hogs.filter(hog => !hog.isHidden)
    console.log('2', hogs)
    if(this.state.showGreased) {
      hogs = hogs.filter(hog => hog.greased)
    }
    if (this.state.orderBy === 'Name') {
      hogs = hogs.sort((a, b) => (a.name > b.name) ? 1 : -1);
    } else if (this.state.orderBy === 'Weight') {
      hogs = hogs.sort((a, b) => (a.weight> b.weight) ? 1 : -1);
    }

    return hogs
  }

  hideHog= (name) => {
    const updatedHogs = this.state.hogs.map(hog => {
      if (hog.name === name ){
        return {
          ...hog,
          isHidden: true
        }
      }
      else{
        return hog
      }
    })

    this.setState({
      hogs: updatedHogs
    })
  }

  render() {
    return (
      <div className="App">
          <Nav />
          <Filter 
            orderHogs={this.orderHogs}
            filterGreased={this.filterGreased}/>
            <HogContainer 
              hideHog={this.hideHog}
              hogs={this.getHogs()} />
      </div>
    )
  }
}

export default App;
