Vote.destroy_all
Image.destroy_all
Comment.destroy_all
Post.destroy_all



posts = Post.create([
  {message: "This is a post 1 message"},
  {message: "This is a post 2 message"},
  {message: "This is a post 3 message"},
  {message: "This is a post 4 message"},
  {message: "This is a post 5 message"},
  {message: "This is a post 6 message"},
])

posts[0].comments << Comment.create(body:"The 1994 Chardonnay from Bob's Winery blends absurd sage overtones with a toasty albuterol aroma.", user: 'Adalberto (three toes) Alan')

posts[0].images << Image.create(url: 'http://lorempixel.com/output/cats-q-c-450-450-8.jpg')
posts[0].images << Image.create(url: 'http://lorempixel.com/output/cats-q-c-450-450-7.jpg')

posts[1].comments << Comment.create(body:"A soapy boysenberry aftertaste and torrid spearmint elements are binded in the 2010 Syrah from De Carro Bros Vineyards.", user: 'Knuckles Rodney')

posts[1].images << Image.create(url: 'http://lorempixel.com/output/people-q-c-450-450-1.jpg')
posts[1].images << Image.create(url: 'http://lorempixel.com/output/people-q-g-450-450-7.jpg')

posts[2].comments << Comment.create(body:"Palm Creek Vineyards unites better-than-slow-death cheeseburger flavors and a rough cherry bouquet in their 2000 Pinot Grigio.", user: 'Triclops')

posts[2].images << Image.create(url: 'http://lorempixel.com/output/food-q-c-450-450-4.jpg')
posts[2].images << Image.create(url: 'http://lorempixel.com/output/food-q-c-450-450-9.jpg')

posts[3].comments << Comment.create(body:"A non-toxic mealy flavor and ashy velvet undertones are entangled in the 1992 Cabernet Sauvignon from Chateau Merde.", user: 'Adam Bloodgood')

posts[3].images << Image.create(url: 'http://lorempixel.com/output/transport-q-c-450-450-9.jpg')
posts[3].images << Image.create(url: 'http://lorempixel.com/output/transport-q-c-450-450-8.jpg')

posts[4].comments << Comment.create(body:"The 2001 Bordeaux from Alkie Winery combines delightful gingerbread essences with a wookie-proof oatmeal essence.", user: 'Peregrin Tinyfoot')

posts[4].images << Image.create(url: 'http://lorempixel.com/output/sports-q-c-450-450-8.jpg')
posts[4].images << Image.create(url: 'http://lorempixel.com/output/sports-q-c-450-450-1.jpg')

posts[5].comments << Comment.create(body:"Champs de Martine brings together cantankerous white pepper midtones and a hard-to-miss rum perfume in their 2005 Semillon.", user: 'The Limping Swordsman')

posts[5].images << Image.create(url: 'http://lorempixel.com/output/technics-q-c-450-450-4.jpg')
posts[5].images << Image.create(url: 'http://lorempixel.com/output/technics-q-c-450-450-7.jpg')
