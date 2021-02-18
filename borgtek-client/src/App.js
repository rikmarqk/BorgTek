import React, { Component } from "react";
import MainContainer from './components/MainContainer.js';
import SearchBar from './components/SearchBar.js';
import NavBar from './components/NavBar.js';
import './App.css';

function App() {
  return (
    <div className="ui raised segment">
        <div className="ui segment violet inverted">
          <h2>BorgTek</h2>
        </div>
        <MainContainer />
      </div>
  );
}

export default App;
