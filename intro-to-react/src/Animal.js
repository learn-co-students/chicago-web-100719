import React from 'react'

export default class Animal extends React.Component {
  render(){
    return (
      <div>
        {this.props.animalName}
      </div>
    )
  }
}
