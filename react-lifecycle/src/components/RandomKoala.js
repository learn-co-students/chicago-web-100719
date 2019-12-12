import React, { Component } from 'react'

class RandomKoala extends Component {
  constructor(){
    super();
  }

  componentDidMount(){
  }


  renderKoalas = () => {
    return this.props.koalas.map((koalaObject) => {
      return <div>
        <img src={koalaObject.image_url} />
      </div>
    })
    
  }

  render () {
    console.log('randomKoala component', this.props)
    return (
      <div className="app-children">
        {this.renderKoalas()} 
      </div>
    )
  }
}

export default RandomKoala
