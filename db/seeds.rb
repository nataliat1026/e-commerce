require 'faker'

Category.delete_all
puts "Seeding Categories...🌱"

10.times do
    Category.create(name: Faker::Commerce.department(max: 1, fixed_amount: true))
end


Product.delete_all
puts "Seeding Products...🌱"

arr_products = [
    ['Korean Hot Chicken Ramen Cup Noodle Soup', 11.08, 'Six cups of Korean brand hot chicken flavored ramen noodle cups'],
    ['Ghost Whey Protein', 44.94, 'Ghost Whey was conceived to feed savagery around the clock'],
    ['Krispy Kreme Glazed Donuts', 6.15, 'Delicious dozen of glazed, diabetes-inducing donuts.']
]

arr_products.each do|array| 
    product = Product.create(
                name: array[0], 
                price: array[1], 
                description: array[2]
                )
    product.categories << Category.all.sample
end


Image.delete_all
puts "Seeding Images...🌱"

img_arr = [
    # ramen
    ['https://m.media-amazon.com/images/I/81G6Xwj39xL._SX569_.jpg', 
    'https://m.media-amazon.com/images/I/81UYAjcZRbL._SX569_.jpg', 
    'https://m.media-amazon.com/images/I/81N9-xYJUAL._SX569_.jpg'],
    # protein powder
    ['https://cdn.shopify.com/s/files/1/2060/6331/products/WheyOREO.png?v=1625590063', 
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3NKx1XvHDJocAltnEI3ijReu1_U6onq7nV2h7jjtx43vyXuQzTdcnrBTd41uVA2o_ZLw&usqp=CAU'],
    # donuts
    ['https://cloudfront-us-east-1.images.arcpublishing.com/advancelocal/2JOPL2WZIRG2BGW7K5MCCK4LLA.jpg', 
    'https://www.gannett-cdn.com/presto/2022/04/13/USAT/a8e6f5ae-7e4f-4fea-bc68-0d8eafc1eb5e-KKD_Beat_the_Pump.jpg', 
    'https://www.fastfoodcalories.com/wp-content/uploads/2019/07/Krispy-Kreme-Original-Glazed-Doughnut.jpg']
]

img_arr.each.with_index(1){|array, index| array.each{|url| Image.create(url: url, product: Product.find(index))}}


User.delete_all
puts "Seeding Users...🌱"

u1 = User.create(email: 'bob@gmail.com', password: 'gg')
u2 = User.create(email: 'notbob@gmail.com', password: 'gg')
u3 = User.create(email: 'alsonotbob@gmail.com', password: 'gg')

10.times do
    User.create(email: Faker::Internet.email, password: 'gg')
end


Review.delete_all
puts "Seeding Reviews...🌱"

20.times do
    Review.create(
        rating: rand(1..5),
        content: Faker::Lorem.paragraph(sentence_count: 2, supplemental: true, random_sentences_to_add: 3),
        product_id: rand(1..3),
        user_id: rand(1..13)
    )
end


puts "Seeding Done!🌱"
