omar = User.create username: 'Omar', email: 'omar@ramo.com', password: '123456', password_confirmation: '123456'

ramo = User.create username: 'ramo', email: 'ramo@omar.com', password: '123456', password_confirmation: '123456'

Category.create name: 'Mild', priority: 1
Category.create name: 'Spicy', priority: 2
Category.create name: 'Soup', priority: 3
Category.create name: 'Appetizer', priority: 4
# user 1
article1 = omar.articles.create title: 'Spicy Chicken', content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id volutpat nunc. Proin interdum ornare nisl, quis fringilla lacus placerat a.', image: 'https://c.ndtvimg.com/2020-10/5dfenv68_chicken-popcorn_625x300_07_October_20.jpg', category_id: '1'
article2 = omar.articles.create title: 'Mild Chicken', content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id volutpat nunc. Proin interdum ornare nisl, quis fringilla lacus placerat a.', image: 'https://i.insider.com/60ca540920bd1300181c6aad?width=700', category_id: '2'
article3 = omar.articles.create title: 'Chicken Soup', content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id volutpat nunc. Proin interdum ornare nisl, quis fringilla lacus placerat a.', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxuPLpQgBjtdkqay1kFRKbzIrM2xyQoa732g&usqp=CAU', category_id: '3'
article4 = omar.articles.create title: 'Chicken Appetizer', content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id volutpat nunc. Proin interdum ornare nisl, quis fringilla lacus placerat a.', image: 'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F43%2F2021%2F04%2F13%2F8814_HomemadeChickenSoup_SoupLovingNicole_LSH-2000.jpg&q=85', category_id: '4'
# user 2
article1 = ramo.articles.create title: 'Spicy Noodles', content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id volutpat nunc. Proin interdum ornare nisl, quis fringilla lacus placerat a.', image: 'https://www.errenskitchen.com/wp-content/uploads/2018/08/Quick-Easy-Chinese-Noodle-Soup1200.jpg', category_id: '1'
article2 = ramo.articles.create title: 'Mild Noodles', content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id volutpat nunc. Proin interdum ornare nisl, quis fringilla lacus placerat a.', image: 'https://www.errenskitchen.com/wp-content/uploads/2018/08/quick-and-easy-chinese-noodle-soup1200.jpg', category_id: '2'
article3 = ramo.articles.create title: 'Noodles', content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id volutpat nunc. Proin interdum ornare nisl, quis fringilla lacus placerat a.', image: 'https://globalkitchentravels.com/wp-content/uploads/2020/12/Soup-LR-HERO.jpg', category_id: '3'
article4 = ramo.articles.create title: 'Spicy Noodles', content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id volutpat nunc. Proin interdum ornare nisl, quis fringilla lacus placerat a.', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2vBRybkqt5a20jJRXWyRwTcnDoxczmlPbOQ&usqp=CAU', category_id: '4'



vote1 = Vote.create id: 1, article_id: 1, user_id: 1
vote2 = Vote.create id: 1, article_id: 1, user_id: 2
