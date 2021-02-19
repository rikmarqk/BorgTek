import React from 'react'

const SearchBar = (props) => {
    return (
        <div className="search-bar">
            <input
        type="text"
        placeholder={"Search Tek"}
        value = {props.search}
        onChange={(e) => {props.editSearch(e)}}
      />
      <i className="circular search link icon"></i>
        </div>
    );
};

export default SearchBar;