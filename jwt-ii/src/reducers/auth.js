export default function auth(state = {}, action) {
  switch (action.type) {
    case 'LOGIN_SUCCESS':
      return {...action.user}
    case 'LOGOUT_USER':
      return {}
    default:
      return state
  }
}
