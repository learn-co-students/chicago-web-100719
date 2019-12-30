import { combineReducers } from 'redux'
import paintingsReducer from './paintings'
import loaderReducer from './loader'
import fooReducer from './foo'

export default combineReducers({
  loader: loaderReducer,
  paintings: paintingsReducer,
  foo: fooReducer
})
