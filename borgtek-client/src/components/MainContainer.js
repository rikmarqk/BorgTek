import React, { Component } from "react";
import SearchBar from './SearchBar.js'
import NavBar from './NavBar.js'
import BrowseCardsContainer from './BrowseCardsContainer.js'
import ShowcaseContainer from './ShowcaseContainer.js'



const COMPUTERS_URL = "http://localhost:3000/computers"


class MainContainer extends Component {

state = {
  allComputers: []
}

componentDidMount = () => {
  fetch(COMPUTERS_URL)
  .then(resp => resp.json())
//   .then(comps => console.log(comps))
  .then(compsData => this.setState({allComputers: compsData}))
}
    render(){
    return (
        <div className ="main-container">
            MainContainer
            <NavBar />
            <SearchBar />
            <ShowcaseContainer  allComputers={this.state.allComputers} />
            <BrowseCardsContainer allComputers={this.state.allComputers} />
        </div>
    );
    }
}

export default MainContainer;