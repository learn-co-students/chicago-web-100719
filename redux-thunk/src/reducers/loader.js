export default function loader(state = true, action) {
  switch (action.type) {
    case 'FETCH_PAINTINGS_SUCCESS': 
      return false
    default:
      return state
  }
}
