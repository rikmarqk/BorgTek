import React from 'react'

const ShowcaseCard = ({computer}) => {
    return (
        <div className="showcase-card" key={computer.id}>
            <h3>{computer.name}</h3>
            <ul>
                <li>${computer.price}</li>
                <li>Motherboard: {computer.mobo}</li>
                <li>CPU: {computer.cpu}</li>
                <li>RAM: {computer.ram}</li>
                <li>GPU: {computer.gpu}</li>
                <li>HDD: {computer.hdd}</li>
                <li>SSD: {computer.ssd}</li>
                <li>Purpose: {computer.purpose}</li>
                <br/>
                <p>Delete Computer</p>
            </ul>
        </div>
    );
};


export default ShowcaseCard;