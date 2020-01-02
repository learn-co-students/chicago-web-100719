import React from 'react';
import { Link } from 'react-router-dom';
import { connect } from 'react-redux'
import { logoutUser } from '../actions/index'
import { withRouter } from 'react-router-dom'

const colors = [
];

class Navbar extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      color: 'yellow'
    };
  }

  handleLogout = () => {
    localStorage.removeItem('token')
    this.props.logoutUser()
    this.props.history.push('/login')
  }

  render() {
    console.log(this.props)
    return (
      <div className={`ui inverted yellow menu`}>
        <Link to='/about' className="item">
          <h2 className="ui header">
            <i className={`${this.props.icon} icon`} />
            <div className="content">{this.props.title}</div>
            <div className="sub header">{this.props.description}</div>
          </h2>
        </Link>
        <div className="right menu">
          <div className="item">
            {
              this.props.currentUser.id ?
              <a className="ui button" onClick={this.handleLogout}>
                Logout
              </a>
              :
              <Link to='/login' className="ui button">
                Login 
              </Link>
            }
          </div>
        </div>
      </div>
    );
  }
}

const mapStateToProps = (state) => {
  return {
    currentUser: state.currentUser
  }
}

const mapDispatchToProps = (dispatch) => {
  return {
    logoutUser: () => { dispatch(logoutUser()) }
  } 
}


export default connect(mapStateToProps, mapDispatchToProps)(withRouter(Navbar));



