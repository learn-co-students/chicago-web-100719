import React, { Component } from 'react';

class Hog extends Component {
  constructor(){
    super()
    this.state={
      showDetails: true 
    }
  }

  getImage(){
    const name = this.props.hog.name.toLowerCase().replace(/\ /g, '_')
    return  require(`../hog-imgs/${name}.jpg`)
  }
  
  toggleDetails= () => {
    this.setState({
      showDetails: !this.state.showDetails
    })
  } 

  render() {
    const detailsStyle = this.state.showDetails ? 'detailsShown' : 'detailsHidden'

    return (
      <div className="ui eight wide column">
        <img src={this.getImage()} />
        <h6>{this.props.hog.name}</h6>
        <div className={detailsStyle}>
          <h6>
            weight: {this.props.hog.weight}
          </h6>
          <h6>
            medal: {this.props.hog['highest medal achieved']}
          </h6>
          <h6>
            specialty: {this.props.hog.specialty}
          </h6>
        </div>
        <button onClick={this.toggleDetails}>Details</button>
        <button onClick={() => this.props.hideHog(this.props.hog.name)}>Hide Hog</button>
      </div>
    )
  }
}

export default Hog;
