import React from 'react'

import Filters from './Filters'
import PetBrowser from './PetBrowser'


class App extends React.Component {
  constructor() {
    super()

    this.state = {
      pets: [],
      filters: {
        type: 'all'
      }
    }
  }

  onChangeType =  (e) => {
    this.setState({
      filters: {
        type: e.target.value
      }
    })
  }

  onAdoptPet = (petId) => {
    const newPets = this.state.pets.map(pet => {
      if(pet.id === petId) {
        return {
          ...pet,
          isAdopted: true
        }
      } else {
        return pet 
      }
    })

    this.setState({
      pets: newPets
    })
  }

  onFindPetsClick =  () => {
    let url;
    switch(this.state.filters.type) {
      case 'all':
        url = '/api/pets'
        break;
      case 'dog':
        url = '/api/pets?type=dog'
        break;
      case 'cat':
        url = '/api/pets?type=cat'
        break;
      case 'micropig':
        url = '/api/pets?type=micropig'
        break;
    }

    fetch(url)
      .then(resp => resp.json())
      .then(pets => {
        this.setState({
          pets: pets
        })
      })

  }

  render() {
    console.log(this.state.pets)
    return (
      <div className="ui container">
        <header>
          <h1 className="ui dividing header">React Animal Shelter</h1>
        </header>
        <div className="ui container">
          <div className="ui grid">
            <div className="four wide column">
              <Filters 
                onChangeType={this.onChangeType} 
                onFindPetsClick={this.onFindPetsClick} />
            </div>
            <div className="twelve wide column">
              <PetBrowser 
                pets={this.state.pets} 
                onAdoptPet={this.onAdoptPet}
              />
            </div>
          </div>
        </div>
      </div>
    )
  }
}

export default App
