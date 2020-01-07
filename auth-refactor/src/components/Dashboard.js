import React from 'react';
import { loginSuccess } from '../actions/index'
import { connect } from 'react-redux'
import WithAuth from './WithAuth'

class Dashboard extends React.Component {
  render(){
    return (
      <div>
        <h4>This is the admin dashboard</h4>
      </div>
    );
  }
}

const mapDispatchToProps = (dispatch) => {
  return {
    loginSuccess: (user) => {
      dispatch(loginSuccess(user))
    }
  }
}

export default connect(null, mapDispatchToProps)(WithAuth(Dashboard));
