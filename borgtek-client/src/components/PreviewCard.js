import React from 'react'

const PreviewCard = ({computer}) => {
    return (
        <div className="preview-card">
            <h3>{computer.name}</h3>
            <ul>
                <li>{computer.price}</li>
                <li>{computer.mobo}</li>
                <li>{computer.cpu}</li>
                <li>{computer.ram}</li>
                <li>{computer.gpu}</li>
                <li>{computer.hdd}</li>
                <li>{computer.ssd}</li>
                <li>{computer.purpose}</li>
            </ul>
        </div>
    );
};


export default PreviewCard;