import React, { Component } from 'react'

class DigitalClock extends Component {
  constructor(){
    super()
    const date = new Date()
    const time = date.getHours() + ':' + date.getMinutes() + ':' + date.getSeconds()
    this.foo ='bar'

    this.state = {
      time: time
    }
  }

  componentDidMount(){
    this.interval = setInterval(()=> {
      console.log('set interval is called')
      const date = new Date()
      const time = date.getHours() + ':' + date.getMinutes() + ':' + date.getSeconds()
      this.setState({
        time: time
      })
    }, 1000)
  }

  componentWillUnmount(){
    clearInterval(this.interval)
  }

  render () {
    console.log(this.foo)
    return (
      <div className="app-children">
        <h2 id="digital">
          {this.state.time}
        </h2>
      </div>
    )
  }
}

export default DigitalClock
