import { Provider } from 'react-redux'
import React, { Component } from 'react'
import ReactDOM from 'react-dom'
import { BrowserRouter, Route, Link, Switch } from 'react-router-dom'
import { ConnectedRouter } from 'react-router-redux'

import App from './components/App'
import { store, history } from './store'

// const App = () => (<h1>Hello</h1>)

class Root extends Component {
	render() {
		return (
			<Provider store={store}>
		    <ConnectedRouter history={history}>
		      <Switch>
		      	<Route path="/" component={App} />
		      </Switch>
		    </ConnectedRouter>
		  </Provider>
 		)
	}
}

ReactDOM.render(<Root />, document.getElementById('admin-management'))
