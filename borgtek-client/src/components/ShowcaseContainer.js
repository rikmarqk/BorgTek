import React from 'react'
import ShowcaseCard from './ShowcaseCard.js'

const ShowcaseContainer = (props) => {
    return (
        <div className="showcase-container">
            {
          props.allComputers.map(computer=>{
            return <ShowcaseCard computer={computer} key={computer.id} />
            // return <Transaction transaction = {props.dynamicSearch} />
          })
        }
        </div>
    );
};

export default ShowcaseContainer;