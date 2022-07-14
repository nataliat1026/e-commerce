import React from 'react'

const ProductCard = ({ id, name, price, description, images, rating }) => {

    // console.log(images)

    return (
        <div>
            <img className='productThumbnail' src={images[0].url} alt='gallery of product images'></img>
        </div>
    )
    }

export default ProductCard