import React from 'react';
import ReactDOM from 'react-dom';
import Session from './components/session';
import TopicList from './components/topic_list';

document.addEventListener('DOMContentLoaded', () => {
  const root = document.getElementById('root');
  ReactDOM.render(
    // <Session/>, root
    <TopicList />, root 
  );
})