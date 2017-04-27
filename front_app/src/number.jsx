import React, { Component } from 'react';
import './Number.css';

class Number extends Component {
  state = {
    favorite: this.props.favorite,
  };

  favorite_number_request = (number) => {
    this.setState({favorite: !this.state.favorite});

    var request = new Request('https://protected-wave-98335.herokuapp.com/favorite', {
      method: 'POST',
      mode: 'cors',
      body: JSON.stringify({number: number, favorited: true}),
      headers: new Headers({
        'Content-Type': 'application/json'
      })
    });

    fetch(request)
      .then(response => response.json())
      .then(json => {
        this.forceUpdate();
      });
  };

  render() {
    return(
      <div className={this.state.favorite ? 'Number Favorite' : 'Number'} onClick={() => this.favorite_number_request(this.props.number)}>
        <div className="Value">
          {this.props.number}
        </div>
        <div className="Overlay">
        </div>
      </div>
    );
  }
}

export default Number;
