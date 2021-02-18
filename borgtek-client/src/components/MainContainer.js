import React, { Component } from "react";
import SearchBar from './SearchBar.js'
import NavBar from './NavBar.js'
import BrowseCardsContainer from './BrowseCardsContainer.js'
import ShowcaseContainer from './ShowcaseContainer.js'
import CreateForm from './CreateForm.js'



const COMPUTERS_URL = "http://localhost:3000/computers"


class MainContainer extends Component {

state = {
  allComputers: [],
  search: ""
}

componentDidMount = () => {
  fetch(COMPUTERS_URL)
  .then(resp => resp.json())
//   .then(comps => console.log(comps))
  .then(compsData => this.setState({allComputers: compsData}))
}

handleSubmit = (newComputer) => {
  this.setState({
    allComputers: [newComputer, ...this.state.allComputers]
  });
}

editSearch = (e) => {
  console.log(e.target.value)
  this.setState ({search: e.target.value})
}



handleDelete =(selectedComputer) => {
    console.log(selectedComputer)
    this.setState({
        allComputers: this.state.allComputers.filter((computer)=> computer != selectedComputer)
    })
}



    render(){
    return (
        <div className ="main-container">
            MainContainer
            <NavBar />
            <SearchBar search={this.state.search} editSearch={this.editSearch}/>
            <CreateForm handleSubmit={this.handleSubmit} />
            <ShowcaseContainer allComputers={this.state.allComputers}/>
            <BrowseCardsContainer allComputers={this.state.allComputers.filter(computer => computer.name.toLowerCase().includes(this.state.search.toLowerCase()))} handleDelete={this.handleDelete} />
        </div>
    );
    }
}

export default MainContainer;