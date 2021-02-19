import React, { Component } from "react";

const COMPUTERS_URL = "http://localhost:3000/computers"

class CreateForm extends Component {
  state = {
    name: "",
    price: null,
    cpu: "",
    ram: "",
    gpu: "",
    hdd: "",
    ssd: "",
    purpose: ""
  }

  handleSubmit = (e) => {
  e.preventDefault();
  let newComputer = {
    name: this.state.name,
    price: this.state.price,
    cpu: this.state.cpu,
    ram: this.state.ram,
    gpu: this.state.gpu,
    hdd: this.state.hdd,
    ssd: this.state.ssd,
    purpose: this.state.purpose
  }
  fetch(COMPUTERS_URL, {
    headers: {"Content-Type": "application/json"},
    method: 'POST',
    body: JSON.stringify(newComputer)
  })
  .then(resp=>resp.json())
  .then(data=>this.props.submitUpdate(data))
  console.log(newComputer)
  }

    render() {
    return (
        <div className="create-form">
        <p>Customize Computer:</p>
            <form className="ui form" onSubmit={this.handleSubmit}>
          <div className="inline fields">
            <input onChange={(e)=> this.setState({name:e.target.value})} type="text" name="name" placeholder="Name" />
            <input onChange={(e)=> this.setState({price:e.target.value})} type="number" name="price" placeholder="Price" step="0.01"/>
            <input onChange={(e)=> this.setState({mobo:e.target.value})} type="text" name="mobo" placeholder="Motherboard" />
            <input onChange={(e)=> this.setState({cpu:e.target.value})} type="text" name="cpu" placeholder="CPU" />
            <input onChange={(e)=> this.setState({ram:e.target.value})} type="text" name="ram" placeholder="RAM" />
            <input onChange={(e)=> this.setState({gpu:e.target.value})} type="text" name="gpu" placeholder="GPU" />
            <input onChange={(e)=> this.setState({hdd:e.target.value})} type="text" name="hdd" placeholder="HDD" />
            <input onChange={(e)=> this.setState({ssd:e.target.value})} type="text" name="ssd" placeholder="SSD" />
            <input onChange={(e)=> this.setState({purpose:e.target.value})} type="text" name="purpose" placeholder="Purpose" />
          </div>
          <button className="ui button" type="submit" >
            Add Computer
          </button>
        </form>
        </div>
        );
    }
}


export default CreateForm;