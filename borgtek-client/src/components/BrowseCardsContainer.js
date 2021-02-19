import React from 'react'
import PreviewCard from './PreviewCard.js'

const BrowseCardsContainer = (props) => {
    return (
        <div className="browse-cards-container">
            {
          props.allComputers.map(computer=>{
            return <PreviewCard computer={computer} key={computer.id}  handleDelete={props.handleDelete} />
            // return <Transaction transaction = {props.dynamicSearch} />
          })
        }
        </div>
    );
};

export default BrowseCardsContainer;