import React from 'react'

class Session extends React.Component{
  constructor(props) {
    super(props);
    this.state = {
      user: null,
      inputUsername: '',
      inputPassword: ''
    };

    this.handleLogin = this.handleLogin.bind(this);
    this.setUsername = this.setUsername.bind(this);
    this.setPassword = this.setPassword.bind(this);
    this.handleLogout = this.handleLogout.bind(this);
  }

  handleLogin(e) {
    e.preventDefault();
    this.loginUser(this.state.inputUsername, this.state.inputPassword).then((data) => {
      this.setState({user: data})
    })
  }

  loginUser(username, password) {
    return ($.ajax({
      method: 'POST',
      url: 'api/session',
      data: {username: `${username}`, password: `${password}`}
    }));
  }

  setUsername(e) {
    this.setState({inputUsername: e.currentTarget.value});
  }

  setPassword(e) {
    this.setState({inputPassword: e.currentTarget.value});
  }

  handleLogout(e) {
    e.preventDefault();
    this.logoutUser().then(() => { this.setState({user: null}) })
  }

  logoutUser() {
    return ($.ajax({
      method: 'DELETE',
      url: 'api/session'
    }))
  }

  render() {
    if (this.state.user) {
      return (
        <div>
          <h2>Hello {this.state.user.user}</h2>
          <button type="submit" onClick={this.handleLogout}>Logout</button>
          </div>
      )
    } else {
      return (
        <div>
          <input type="text" placeholder="username" onChange={this.setUsername} />
          <input type="password" placeholder="password" onChange={this.setPassword} />
          <input type="submit" onClick={this.handleLogin} />
        </div>
      )
    }
  }
}

export default Session;