 <!-- 
 
 products
 categories
 category_tags
 reviews
 images

 product has many category_tags
 product has many categories, through category_tags

 category has many category_tags
 category has many products, through category_tags

 category_tag belongs to product
 category_tag belongs to category

--

 product has many reviews
 product has many users, through reviews

 user has many reviews
 user has many products, through reviews

 review belongs to product
 review belongs to user

 --

 product has many images
 image belongs to product

 --------------

 products
- name
- price
- description

categories
- name

category_tags
- product_id
- category_id

users
- email
- password_digest

reviews
- rating
- content
- product_id
- user_id

images
- url
- product_id

 -->
