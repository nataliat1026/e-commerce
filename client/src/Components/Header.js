import React from 'react';
import { Link } from 'react-router-dom';
import { MenuIcon, SearchIcon, ShoppingCartIcon } from '@heroicons/react/outline'

const Header = () => {
  return (
    <header>
      <div className='headerTopWrapper'>
        <Link to='/'>
          <img className='logo' src='https://i.ibb.co/W04cRMH/logo-light.png' alt="amazon logo with word 'not' in front of it"></img>
        </Link>
        <div className='searchWrapper'>
          <input className='searchBar' type='text'></input>
          <SearchIcon className='searchIcon' />
        </div>
      </div>



      <div>

      </div>
    </header>
  )
}

export default Header
