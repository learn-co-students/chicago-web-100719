export default function paintings(state = [], action) {
  switch (action.type) {
    case 'FETCH_PAINTINGS_SUCCESS': 
      return [...action.paintings]
    default:
      return state
  }
}
