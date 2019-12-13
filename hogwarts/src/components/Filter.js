import React, { Component } from 'react';

class Filter extends Component {
  render() {
    return (
      <div className='form'>
        <input 
          onChange={this.props.filterGreased} 
          id="mybox"
          type='checkbox' 
        />Show Greased<br/>
        Order By
        <select onChange={this.props.orderHogs}> 
          <option></option>
          <option>Name</option>
          <option>Weight</option>
        </select>
      </div>
    )
  }
}

export default Filter;
