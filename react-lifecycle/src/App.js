import React, { Component } from 'react';

import WidgetSelector from './components/WidgetSelector'
import DigitalClock from './components/DigitalClock'
import StockTicker from './components/StockTicker'


class App extends Component {
  constructor(){
    super()
    this.state = {
      showTicker: false
    }
  }

  handleToggleWidget = () => {
    this.setState({
      showTicker: !this.state.showTicker
    })
  }

  render() {
    return (
      <div id='app'>
        <WidgetSelector toggleWidget={this.handleToggleWidget} />
        {this.state.showTicker ? <StockTicker/> : <DigitalClock/>}
      </div>
    )
  }
}

export default App;

