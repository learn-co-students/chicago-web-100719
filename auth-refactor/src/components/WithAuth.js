import React from 'react';

export default function WithAuth(WrappedComponent) {
  return class extends React.Component {
    constructor(props) {
      super(props);
    }

    componentDidMount(){
      const token = localStorage.getItem('token')

      if(!token){
        this.props.history.push('/admin')
      } else {

        const reqObj = {
          method: 'GET',
          headers: {
            'Content-Type': 'application/json',
            'Authorization': `Bearer ${token}`
          }
        }

        fetch('http://localhost:3000/api/v1/current_user', reqObj)
          .then(resp => resp.json())
          .then(data => {
            console.log('foo', data)
            if(data.error) {
              this.props.history.push('/admin')
            } else {
              this.props.loginSuccess(data)

            }
          })
      }
    }

    render() {
      return <WrappedComponent />;
    }
  };
}
