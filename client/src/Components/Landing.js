import React from 'react';
import Banner from './Banner';
import ProductFeed from './ProductFeed';

const Landing = ({ products }) => {
  return (
    <div className='landing'>
      <Banner />
      <ProductFeed products={products} />
    </div>
  )
}

export default Landing