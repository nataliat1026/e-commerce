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
            {/* update all of these links */}
            <Link className='headerLink' to='/'>
              <p className='headerTextTop'>
                Greeting
              </p>
              <p className='headerTextBottom'>
                Account &amp; Lists
              </p>
            </Link>
          </div>
          <div className='headerTextDiv'>
            <Link className='headerLink' to='/'>
              <p className='headerTextTop'>
                Returns
              </p>
              <p className='headerTextBottom'>
                &amp; Orders
              </p>
            </Link>
          </div>
          <div className='headerTextDiv'>
            <Link className='cartLink' to='/'>
              <ShoppingCartIcon className='shoppingCartIcon' />
              <p className='headerTextBottom'>
                Cart
              </p>
            </Link>
          </div>
        </div>
      </div>



      <div>

      </div>
    </header>
  )
}

export default Header
