import React from 'react';
import { StarIcon } from '@heroicons/react/solid';

const ProductCard = ({ id, name, price, description, images, rating }) => {

    console.log(rating)

    return (
        

        <div>
            <img className='productThumbnail' src={images[0].url} alt='gallery of product images'></img>
            <h4>{name}</h4>

            <div className='ratingContainer'>
                {Array(rating)
                    .fill()
                    .map((_, i) => (
                        <StarIcon className='starIcon' />
                    ))}
            </div>

                
        </div>
    )
    }

export default ProductCard