import { applyMiddleware, createStore } from 'redux'
import { createLogger } from 'redux-logger'
import { composeWithDevTools } from 'redux-devtools-extension/developmentOnly'
import { routerMiddleware } from 'react-router-redux'
import createHistory from 'history/createBrowserHistory';

import reducer from './reducer'

export const history = createHistory()

// Build the middleware for intercepting and dispatching navigation actions
const myRouterMiddleware = routerMiddleware(history)

const getMiddleware = () => {
  if (process.env.NODE_ENV === 'production') return applyMiddleware(myRouterMiddleware)
    // Enable additional logging in non-production environments.
  return applyMiddleware(myRouterMiddleware, createLogger())
}

export const store = createStore(reducer, composeWithDevTools(getMiddleware()))
