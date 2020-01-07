export default function currentUser(state = {}, action) {
  switch (action.type) {
    case 'LOGIN_SUCCESS': 
      return {
        id: action.user.id,
        username: action.user.username
      }
    default:
      return state
  }
}
