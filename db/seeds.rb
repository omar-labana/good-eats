require 'database_cleaner/active_record'

DatabaseCleaner.strategy = :truncation

# then, whenever you need to clean the DB
DatabaseCleaner.clean

omar = User.create username: 'Omar', email: 'omar@ramo.com', password: '123456', password_confirmation: '123456'

ramo = User.create username: 'ramo', email: 'ramo@omar.com', password: '123456', password_confirmation: '123456'

Category.create name: 'Mild', pirority: 1
Category.create name: 'Spicy', pirority: 2
Category.create name: 'Soup', pirority: 3
Category.create name: 'Appetizer', pirority: 4
# # user 1
article1 = omar.articles.create title: 'Mild chicken curry ', body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id volutpat nunc. Proin interdum ornare nisl, quis fringilla lacus placerat a.', image: 'https://preview.redd.it/og4w1dw46hd71.jpg?width=640&crop=smart&auto=webp&s=53f9e7fde28a803f8f803f4aa1d6c398ed0017b7', category_id: '1'
article2 = omar.articles.create title: 'Spicy chicken wings', body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id volutpat nunc. Proin interdum ornare nisl, quis fringilla lacus placerat a.', image: 'https://preview.redd.it/36sv7qzmgrc71.jpg?width=640&crop=smart&auto=webp&s=7aa5a3c1eb0dd48f62fac6519ef53395443e84b6', category_id: '2'
article3 = omar.articles.create title: 'Chicken Soup', body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id volutpat nunc. Proin interdum ornare nisl, quis fringilla lacus placerat a.', image: 'https://preview.redd.it/er9i5dn4agc71.jpg?width=640&crop=smart&auto=webp&s=86c860d2a010745a21a4413945a503cb194f3007', category_id: '3'
article4 = omar.articles.create title: 'Chicken Appetizer', body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id volutpat nunc. Proin interdum ornare nisl, quis fringilla lacus placerat a.', image: 'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-body%2Fuploads%2Fsites%2F43%2F2021%2F04%2F13%2F8814_HomemadeChickenSoup_SoupLovingNicole_LSH-2000.jpg&q=85', category_id: '4'
# # user 2
article1 = ramo.articles.create title: 'Mild noodles with meat', body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id volutpat nunc. Proin interdum ornare nisl, quis fringilla lacus placerat a.', image: 'https://preview.redd.it/m3pw2voqplc71.jpg?width=640&crop=smart&auto=webp&s=9ccc4b3595ae9446346046115acf6be73e4c1c58', category_id: '1'
article2 = ramo.articles.create title: 'Spicy Noodles meatballs', body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id volutpat nunc. Proin interdum ornare nisl, quis fringilla lacus placerat a.', image: 'https://preview.redd.it/o5u4ehoisdc71.jpg?width=640&crop=smart&auto=webp&s=a2ce398345147aac0fdf9ff64fbff2d0ec7ba41a', category_id: '2'
article3 = ramo.articles.create title: 'Noodles vegetables soup', body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id volutpat nunc. Proin interdum ornare nisl, quis fringilla lacus placerat a.', image: 'https://preview.redd.it/xx9ubxjw22a71.jpg?width=640&crop=smart&auto=webp&s=0e3909aae79cac7a2ff54fb2f5afc53073ca58cd', category_id: '3'
article4 = ramo.articles.create title: 'Good looking appetizers', body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id volutpat nunc. Proin interdum ornare nisl, quis fringilla lacus placerat a.', image: 'https://preview.redd.it/orblfuylhy971.jpg?width=640&crop=smart&auto=webp&s=b88f49b21fc0f14c9f304a735a14a1c2427e1c20', category_id: '4'



vote1 = Vote.create id: 1, article_id: 1, user_id: 1
vote2 = Vote.create id: 2, article_id: 1, user_id: 2
vote2 = Vote.create id: 3, article_id: 2, user_id: 2
