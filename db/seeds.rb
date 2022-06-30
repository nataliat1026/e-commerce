require 'faker'



Product.delete_all

puts "Seeding Products...🌱"

p1 = Product.create(
        name: 'Korean Hot Chicken Ramen Cup Noodle Soup', 
        price: 11.08, 
        description: 'Six cups of Korean brand hot chicken flavored ramen noodle cups'
        )




Category.delete_all

puts "Seeding Categories...🌱"

c1 = Category.create(name: 'food')
c2 = Category.create(name: 'pantry')
c3 = Category.create(name: 'international')




User.delete_all

puts "Seeding Users...🌱"

u1 = User.create(email: 'bob@gmail.com', password_digest: 'gg')
u2 = User.create(email: 'notbob@gmail.com', password_digest: 'gg')
u3 = User.create(email: 'alsonotbob@gmail.com', password_digest: 'gg')




CategoryTag.delete_all

puts "Seeding Category Tags...🌱"

CategoryTag.create(category_id: c1.id, product_id: p1.id)
CategoryTag.create(category_id: c2.id, product_id: p1.id)
CategoryTag.create(category_id: c3.id, product_id: p1.id)




Image.delete_all

puts "Seeding Images...🌱"

Image.create(url: 'https://m.media-amazon.com/images/I/81G6Xwj39xL._SX569_.jpg', product_id: p1.id)
Image.create(url: 'https://m.media-amazon.com/images/I/81UYAjcZRbL._SX569_.jpg', product_id: p1.id)
Image.create(url: 'https://m.media-amazon.com/images/I/81N9-xYJUAL._SX569_.jpg', product_id: p1.id)




Review.delete_all

puts "Seeding Reviews...🌱"

Review.create(
    rating: 5, 
    content: 'I love the flavor, it is absolutely delicious. Very spicy, but very tasty!',
    product_id: p1.id,
    user_id: u1.id
    )

Review.create(
    rating: 4, 
    content: 'I like spicy food, but even so I would give this a solid rank for the spice level. Super yummy!',
    product_id: p1.id,
    user_id: u2.id
    )

Review.create(
    rating: 2, 
    content: 'WAY too spicy!',
    product_id: p1.id,
    user_id: u3.id
    )




puts "Seeding Done!🌱"