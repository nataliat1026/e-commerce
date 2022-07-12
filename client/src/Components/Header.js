import React from 'react';
import { Link } from 'react-router-dom';
import { MenuIcon, SearchIcon, ShoppingCartIcon } from '@heroicons/react/outline'

const Header = () => {
  return (
    <header>
      <div className='headerTopWrapper'>
        <Link className='logoLink' to='/'>
          <img className='logo' src='https://i.ibb.co/W04cRMH/logo-light.png' alt="amazon logo with word 'not' in front of it"></img>
        </Link>
        <div className='searchWrapper'>
          <input className='searchBar' type='text'></input>
          <SearchIcon className='searchIcon' />
        </div>
        <div className='headerTextWrapper'>
          <div className='headerTextDiv'>
            <p className='headerText'>
              Greeting
            </p>
            <p className='headerText'>
              Account &amp; Lists
            </p>
          </div>
          <div className='headerTextDiv'>
            <p className='headerText'>
              Returns
            </p>
            <p className='headerText'>
              &amp; Orders
            </p>
          </div>
          <div className='headerTextDiv'>
            <ShoppingCartIcon className='shoppingCartIcon' />
            <p className='headerText'>
              Basket
            </p>
          </div>
        </div>
      </div>



      <div>

      </div>
    </header>
  )
}

export default Header
