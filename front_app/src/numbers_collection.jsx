import React, { Component } from 'react';
import './NumbersCollection.css';
import Number from "./number";

class NumbersCollection extends Component {
  state = {
    numbers: [],
    page: 1,
    per_page: 100
  };

  add_numbers_to_state = (element, index, array) => {
    this.state.numbers.push(element);
  };

  update_per_page = (event) => {
    this.setState({per_page: event.target.value});
  }

  update_page = (key, page, per_page) => {
    if (key === 13) {
      var url = 'https://protected-wave-98335.herokuapp.com/numbers?page=' + page +'&per_page=' + per_page;
      this.request_numbers(url);
    }
  }

  view_page = (page, per_page) => {
    if (page >= 1) {
      var url = 'https://protected-wave-98335.herokuapp.com/numbers?page=' + page +'&per_page=' + per_page;
      this.request_numbers(url);
      this.setState({page: page});
    }
  }

  request_numbers = (url) => {
    var request = new Request(url, {
      method: 'GET',
      mode: 'cors'
    });

    fetch(request)
        .then(response => response.json())
        .then(json => {
          this.setState({numbers: []})
          json.forEach(this.add_numbers_to_state);
          this.forceUpdate();
        });
  };

  componentWillMount() {
    var url = 'https://protected-wave-98335.herokuapp.com/numbers?page=1&per_page=100'
    this.request_numbers(url);
  }

  render() {
    var numbers = this.state.numbers.map(function(number) {
      return (
        <Number
          number={number.number}
          real={number.real_number}
          favorite={number.favorite}
          key={number.real_number}
          page={this.state.page}
          per_page={this.state.per_page}
        />
      )}, this);

    return(
      <div className="NumbersCollection">
        <div className="PerPage">
          <h2>Numbers per page:</h2>
          <input type="number" value={this.state.per_page} onChange={this.update_per_page} onKeyDown={(event) => this.update_page(
              event.keyCode,
              this.state.page,
              this.state.per_page
          )}
          />
        </div>
        <div className="Numbers">
          {numbers}
        </div>
        <div className="Navigation">
          <div className="Previous" onClick={() => this.view_page((this.state.page - 1), this.state.per_page)}>&larr; PREVIOUS PAGE</div>
          <div className="Next" onClick={() => this.view_page((this.state.page + 1), this.state.per_page)}>NEXT PAGE &rarr;</div>
        </div>
      </div>
    );
  }
}

export default NumbersCollection;
