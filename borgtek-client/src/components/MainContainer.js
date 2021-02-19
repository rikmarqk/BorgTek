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

submitUpdate = (newComputer) => {
  this.setState({
    allComputers: [newComputer, ...this.state.allComputers]
  });
}

handleDelete =(selectedComputer) => {
    console.log(COMPUTERS_URL+`/${selectedComputer.id}`)
    fetch(COMPUTERS_URL+`/${selectedComputer.id}`, {
    headers: {"Content-Type": "application/json"},
    method: 'DELETE'
  })
  .then(resp => resp.json())
  .then(resp => this.setState({
        allComputers: this.state.allComputers.filter((computer)=> computer != selectedComputer)
    }))
}

editSearch = (e) => {
  console.log(e.target.value)
  this.setState ({search: e.target.value})
}

    render(){
    return (
        <div className ="main-container">
            <NavBar />
            <div className="search-create-container">
            <SearchBar search={this.state.search} editSearch={this.editSearch}/>
            <CreateForm submitUpdate={this.handleSubmit} />
            </div>
            <ShowcaseContainer allComputers={this.state.allComputers}/>
            <BrowseCardsContainer allComputers={this.state.allComputers.filter(computer => computer.name.toLowerCase().includes(this.state.search.toLowerCase()))} handleDelete={this.handleDelete} />
        </div>
    );
    }
}

export default MainContainer;