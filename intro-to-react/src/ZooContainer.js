import React from 'react'
import Animal from './Animal'

class ZooContainer extends React.Component {
  constructor(props){ 
    super(props)
    this.state = {
      animals: [
        {name: 'Lion'}, 
        {name:'Tiger'}, 
        {name:'Polar Bear'}
      ]
    }
  }

  // renderAnimals(){
    // return this.state.animals.map((animal) => {
      // return <Animal animalName={animal.name} />
    // })
  // }

  render(){
    const animalComp = this.state.animals.map((animal) => {
      return <Animal animalName={animal.name} />
    })

    return (
      <div>
        {animalComp}
      </div>
    )
  }
}

export default ZooContainer
