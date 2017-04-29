import React from 'react';
import ReactDOM from 'react-dom';
import NumbersCollection from './numbers_collection';

it('renders without crashing', () => {
  const div = document.createElement('div');
  ReactDOM.render(<NumbersCollection />, div);
});
