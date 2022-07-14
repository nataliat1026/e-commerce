import React, { useState } from 'react';
import { StarIcon } from '@heroicons/react/solid';

const ProductCard = ({ id, name, price, description, images, rating }) => {
    const [prime] = useState(Math.random() < 0.5)


    return (
        <div className='productCard'>
            <img className='cardImg' src={images[0].url} alt='gallery of product images'></img>
            <p className='cardName'>{name}</p>
            <div className='ratingContainer'>
                {Array(rating)
                    .fill()
                    .map((_, i) => (
                        <StarIcon className='starIcon' />
                    ))}
            </div>
            <p className='cardDescription'>{description}</p>
            <p className='cardPrice'>${price}</p>
            
            {prime && (
                <div className='prime'>
                    <img className='primeImg' src='https://whitebox.com/wp-content/uploads/2020/05/Prime-tag-.png' alt='Amazon Prime logo'></img>
                    <p className='primeTxt'>FREE Next-day Delivery</p>
                </div>
            )}

            <button className='cardBtn'>Add to Cart</button>


        </div>
    )
    }

export default ProductCard