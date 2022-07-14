import React from 'react';
import ProductCard from './ProductCard';

const ProductFeed = ({ products }) => {
    

    return (
        <div>
            {products.map(({id, name, price, description, product_images, average_rating}) => (
                <ProductCard 
                key={id} 
                name={name}
                price={price}
                description={description}
                images={product_images}
                rating={average_rating}
                />
            ))}
        </div>
    )
    }

export default ProductFeed