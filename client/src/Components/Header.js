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
              <p className='headerTextTop'>Greeting</p>
              <p className='headerTextBottom'>Account &amp; Lists</p>
            </Link>
          </div>
          <div className='headerTextDiv'>
            <Link className='headerLink' to='/'>
              <p className='headerTextTop'>Returns</p>
              <p className='headerTextBottom'>&amp; Orders</p>
            </Link>
          </div>
          <div className='headerTextDiv'>
            <Link className='cartLink' to='/'>
              <span className='cartCount'>0</span>
              <ShoppingCartIcon className='shoppingCartIcon' />
              <p className='headerTextBottom'>Cart</p>
            </Link>
          </div>
        </div>
      </div>

      {/* Again, update all links */}
      <div className='headerBottomWrapper'>
        <Link className='headerBottomLink' to='/'>
          <p className='menuText'>
            <MenuIcon className='menuIcon' />
            Menu
          </p>
        </Link>
        <Link className='headerBottomLink' to='/'>
          <p className='menuText'>All Products</p>
        </Link>
        <Link className='headerBottomLink' to='/'>
          <p className='menuText'>Grocery</p>
        </Link>
        <Link className='headerBottomLink' to='/'>
          <p className='menuText'>Home</p>
        </Link>
        <Link className='headerBottomLink' to='/'>
          <p className='menuText'>Jewelry</p>
        </Link>
        <Link className='headerBottomLink' to='/'>
          <p className='menuText'>Tools</p>
        </Link>
        <Link className='headerBottomLink' to='/'>
          <p className='menuText'>Garden</p>
        </Link>
        <Link className='headerBottomLink' to='/'>
          <p className='menuText'>Kids</p>
        </Link>
        <Link className='headerBottomLink' to='/'>
          <p className='menuText'>Sports</p>
        </Link>
        <Link className='headerBottomLink' to='/'>
          <p className='menuText'>Outdoors</p>
        </Link>
        <Link className='headerBottomLink' to='/'>
          <p className='menuText'>Industrial</p>
        </Link>
        <p className='menuText'>Pet Supplies</p>
        <p className='menuText'>Beauty</p>
        <p className='menuText'>Books</p>
        <p className='menuText'>Electronics</p>
        <p className='menuText'>Toys</p>
        <p className='menuText'>Amazon Basics</p>
        <p className='menuText'>Prime Video</p>

      </div>
    </header>
  )
}

export default Header