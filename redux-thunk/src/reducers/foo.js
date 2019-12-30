export default function foo(state = true, action) {
  switch (action.type) {
    case 'FOOBARBAZ': 
      return false
    default:
      return state
  }
}
