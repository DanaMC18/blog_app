import React from 'react';
import ReactDOM from 'react-dom';
import Session from './components/session';

document.addEventListener('DOMContentLoaded', () => {
  const root = document.getElementById('root');
  ReactDOM.render(
    <Session/>, root
  );
})