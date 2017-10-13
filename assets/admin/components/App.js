import React, { Component } from 'react';

class App extends Component {
	constructor(props) {
		super(props)

		this.state = {
			count: 0
		}
	}

	render() {
		return (
			<div>
				<button onClick={() => this.setState({ count: this.state.count + 1 })}>Increase</button>
				<button onClick={() => this.setState({ count: this.state.count - 1 })}>Decrease</button>
				{this.state.count}
			</div>
		)
	}
}

export default App