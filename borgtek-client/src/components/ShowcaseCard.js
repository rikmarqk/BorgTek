import React from 'react'

const ShowcaseCard = ({computer}) => {
    return (
        <div className="showcase-card">
            <h3>{computer.name}</h3>
            <h5>{computer.price}</h5>
        </div>
    );
};


export default ShowcaseCard;