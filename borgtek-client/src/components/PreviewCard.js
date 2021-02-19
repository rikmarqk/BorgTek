import React from 'react'

const PreviewCard = ({computer, handleDelete}) => {
    return (
        <div className="preview-card" key={computer.id}>
        <div>
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
            <button onClick={()=> handleDelete(computer)} >Delete Computer</button>
        </div>
    );
};


export default PreviewCard;