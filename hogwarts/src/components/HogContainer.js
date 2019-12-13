import React, { Component } from 'react';
import Hog from './Hog'

class HogContainer extends Component {
  renderHogs(){
    return this.props.hogs.map((hog, index) => {
      return <Hog hideHog={this.props.hideHog} hog={hog} />
    })
  }

// key={`${hog.name}-${index}`}
  render() {
    return (
      <div className="ui grid container">
        {this.renderHogs()}
      </div>
    )
  }
}

export default HogContainer;
