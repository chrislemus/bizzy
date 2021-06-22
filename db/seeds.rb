# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Business.delete_all
User.delete_all
Review.delete_all
Category.delete_all


#==================================f=============
# Owners seed 
#===============================================
owners = User.create([
  {
    first_name: "Clifford",
    last_name: "Marshall",
    email: "owner1@example.com",
    password: "12345678",
    thumbnail: "https://randomuser.me/api/portraits/thumb/men/50.jpg",
  },
  {
    first_name: "Sally",
    last_name: "Neal",
    email: "owner2@example.com",
    password: "12345678",
    thumbnail: "https://randomuser.me/api/portraits/thumb/women/91.jpg",
  },
  {
    first_name: "Colleen",
    last_name: "Craig",
    email: "owner3@example.com",
    password: "12345678",
    thumbnail: "https://randomuser.me/api/portraits/thumb/women/29.jpg",
  },
  {
    first_name: "Arthur",
    last_name: "Nichols",
    email: "owner4@example.com",
    password: "12345678",
    thumbnail: "https://randomuser.me/api/portraits/thumb/men/58.jpg",
  },
  {
    first_name: "Jeffery",
    last_name: "Moore",
    email: "owner5@example.com",
    password: "12345678",
    thumbnail: "https://randomuser.me/api/portraits/thumb/men/9.jpg",
  },
  {
    first_name: "Marcus",
    last_name: "Craig",
    email: "owner6@example.com",
    password: "12345678",
    thumbnail: "https://randomuser.me/api/portraits/thumb/men/90.jpg",
  },
  {
    first_name: "Nellie",
    last_name: "Kelly",
    email: "owner7@example.com",
    password: "12345678",
    thumbnail: "https://randomuser.me/api/portraits/thumb/women/31.jpg",
  },
  {
    first_name: "Jeff",
    last_name: "Knight",
    email: "owner8@example.com",
    password: "12345678",
    thumbnail: "https://randomuser.me/api/portraits/thumb/men/70.jpg",
  }
])




#===============================================
# Users seed 
#===============================================

users = User.create([
  {
    first_name: "Jeremiah",
    last_name: "Holmes",
    email: "jeremiah.holmes@example.com",
    password: "12345678",
    thumbnail: "https://randomuser.me/api/portraits/thumb/men/84.jpg"
  },
  {
    first_name: "Jon",
    last_name: "Walters",
    email: "jon.walters@example.com",
    password: "12345678",
    thumbnail: "https://randomuser.me/api/portraits/thumb/men/60.jpg"
  },
  {
    first_name: "Stanley",
    last_name: "Peters",
    email: "stanley.peters@example.com",
    password: "12345678",
    thumbnail: "https://randomuser.me/api/portraits/thumb/men/88.jpg"
  },
  {
    first_name: "Stephen",
    last_name: "Garrett",
    email: "stephen.garrett@example.com",
    password: "12345678",
    thumbnail: "https://randomuser.me/api/portraits/thumb/men/2.jpg"
  },
  {
    first_name: "Dianne",
    last_name: "Franklin",
    email: "dianne.franklin@example.com",
    password: "12345678",
    thumbnail: "https://randomuser.me/api/portraits/thumb/women/3.jpg"
  },
  {
    first_name: "Anna",
    last_name: "Lawson",
    email: "anna.lawson@example.com",
    password: "12345678",
    thumbnail: "https://randomuser.me/api/portraits/thumb/women/45.jpg"
  },
  {
    first_name: "Holly",
    last_name: "Watson",
    email: "holly.watson@example.com",
    password: "12345678",
    thumbnail: "https://randomuser.me/api/portraits/thumb/women/87.jpg"
  },
  {
    first_name: "Lucille",
    last_name: "Snyder",
    email: "lucille.snyder@example.com",
    password: "12345678",
    thumbnail: "https://randomuser.me/api/portraits/thumb/women/26.jpg"
  },
  {
    first_name: "Patrick",
    last_name: "Burke",
    email: "patrick.burke@example.com",
    password: "12345678",
    thumbnail: "https://randomuser.me/api/portraits/thumb/men/63.jpg"
  },
  {
    first_name: "Leo",
    last_name: "Mitchell",
    email: "leo.mitchell@example.com",
    password: "12345678",
    thumbnail: "https://randomuser.me/api/portraits/thumb/men/23.jpg"
  },
  {
    first_name: "Connor",
    last_name: "Lawson",
    email: "connor.lawson@example.com",
    password: "12345678",
    thumbnail: "https://randomuser.me/api/portraits/thumb/men/81.jpg"
  },
  {
    first_name: "Virgil",
    last_name: "Jimenez",
    email: "virgil.jimenez@example.com",
    password: "12345678",
    thumbnail: "https://randomuser.me/api/portraits/thumb/men/0.jpg"
  },
  {
    first_name: "Kent",
    last_name: "Neal",
    email: "kent.neal@example.com",
    password: "12345678",
    thumbnail: "https://randomuser.me/api/portraits/thumb/men/62.jpg"
  },
  {
    first_name: "Floyd",
    last_name: "Ruiz",
    email: "floyd.ruiz@example.com",
    password: "12345678",
    thumbnail: "https://randomuser.me/api/portraits/thumb/men/91.jpg"
  },
  {
    first_name: "Lee",
    last_name: "Palmer",
    email: "lee.palmer@example.com",
    password: "12345678",
    thumbnail: "https://randomuser.me/api/portraits/thumb/men/58.jpg"
  },
  {
    first_name: "Bradley",
    last_name: "Miller",
    email: "bradley.miller@example.com",
    password: "12345678",
    thumbnail: "https://randomuser.me/api/portraits/thumb/men/86.jpg"
  },
  {
    first_name: "Lloyd",
    last_name: "Washington",
    email: "lloyd.washington@example.com",
    password: "12345678",
    thumbnail: "https://randomuser.me/api/portraits/thumb/men/72.jpg"
  },
  {
    first_name: "Suzanne",
    last_name: "Gray",
    email: "suzanne.gray@example.com",
    password: "12345678",
    thumbnail: "https://randomuser.me/api/portraits/thumb/women/48.jpg"
  },
  {
    first_name: "Tonya",
    last_name: "Snyder",
    email: "tonya.snyder@example.com",
    password: "12345678",
    thumbnail: "https://randomuser.me/api/portraits/thumb/women/28.jpg"
  },
  {
    first_name: "Christine",
    last_name: "Holt",
    email: "christine.holt@example.com",
    password: "12345678",
    thumbnail: "https://randomuser.me/api/portraits/thumb/women/57.jpg"
  },
  {
    first_name: "Sara",
    last_name: "Morris",
    email: "sara.morris@example.com",
    password: "12345678",
    thumbnail: "https://randomuser.me/api/portraits/thumb/women/2.jpg"
  },
  {
    first_name: "Bobbie",
    last_name: "Carr",
    email: "bobbie.carr@example.com",
    password: "12345678",
    thumbnail: "https://randomuser.me/api/portraits/thumb/women/5.jpg"
  }
])

#===============================================
# Hours seed 
#===============================================


#mon-fri 9-10
mon_fri_hours = {
  monday_open: '09:00', monday_close: '22:00',
  tuesday_open: '09:00', tuesday_close: '22:00',
  wednesday_open: '09:00', wednesday_close: '22:00',
  thursday_open: '09:00', thursday_close: '22:00',
  friday_open: '09:00', friday_close: '22:00'
}



#===============================================
# Categories seed 
#===============================================
# ['clothing', 'restaurant', '','', '', 'fitness']

category = {
  clothing: Category.create(name: 'clothing'),
  restaurant: Category.create(name: 'restaurant'),
  night_club: Category.create(name: 'night club'),
  home_repair: Category.create(name: 'home repair'),
  beauty: Category.create(name: 'beauty'),
  fitness: Category.create(name: 'fitness')
}


#===============================================
# Business seed 
#===============================================


def rand_owner(owners)
  owners[rand(owners.length)]
end

businesses = Business.create([
  {
    address: "2272 Crockett St",
    city: "Wichita Falls",
    state: "CT",
    zip: 41087,
    phone: "(576)-870-5437",
    name: 'Bikini Bottom',
    category: category[:clothing]
  },
  {
    address: "5957 Taylor St",
    city: "Miami Gardens",
    state: "WI",
    zip: 74051,
    phone: "(175)-339-2884",
    name: 'Fashion Plus',
    category: category[:clothing]
  },
  {
    address: "715 Mockingbird Hill",
    city: "Elizabeth",
    state: "MS",
    zip: 85480,
    phone: "(272)-103-6193",
    name: 'China Imports',
    category: category[:clothing]
  },
  {
    address: "1654 Miller Ave",
    city: "Cary",
    state: "MT",
    zip: 36834,
    phone: "(109)-605-5527",
    name: 'Gappy',
    category: category[:clothing]
  },
  {
    address: "5885 Central St",
    city: "St. Petersburg",
    state: "TN",
    zip: 21221,
    phone: "(163)-252-7108",
    name: 'Forever2020',
    category: category[:clothing]
  },
  {
    address: "6289 Marsh Ln",
    city: "Richardson",
    state: "OK",
    zip: 98147,
    phone: "(884)-356-8187",
    name: 'Stringless',
    category: category[:clothing]
  },
  {
    address: "1268 Rolling Green Rd",
    city: "Vernon",
    state: "AR",
    zip: 59102,
    phone: "(426)-923-1066",
    name: 'MyStylez',
    category: category[:clothing]
  },
  {
    address: "9923 Bollinger Rd",
    city: "Lexington",
    state: "VA",
    zip: 72164,
    phone: "(968)-946-9219",
    name: 'The Runway',
    category: category[:clothing]
  },
  {
    address: "1383 Westheimer Rd",
    city: "Helena",
    state: "OH",
    zip: 82711,
    phone: "(136)-681-5569",
    name: 'Khardasians Closet',
    category: category[:clothing]
  },
  {
    address: "3824 W Campbell Ave",
    city: "Westminster",
    state: "WY",
    zip: 32134,
    phone: "(105)-424-4941",
    name: 'Jeezy Steal',
    category: category[:clothing]
  },
  {
    address: "3611 Saddle Dr",
    city: "Bozeman",
    state: "HI",
    zip: 41825,
    phone: "(688)-862-1061",
    name: 'Jumpman Land',
    category: category[:clothing]
  },
  {
    address: "398 E Pecan St",
    city: "Arlington",
    state: "IA",
    zip: 98811,
    phone: "(534)-505-6847",
    name: 'Marshalllls',
    category: category[:clothing]
  },
  {
    address: "6153 Samaritan Dr",
    city: "San Jose",
    state: "KS",
    zip: 80967,
    phone: "(802)-159-1151",
    name: 'Sleek Looks',
    category: category[:clothing]
  },
  {
    address: "2150 Northaven Rd",
    city: "Augusta",
    state: "ME",
    zip: 43417,
    phone: "(922)-000-9154",
    name: 'Stunning',
    category: category[:clothing]
  },
  {
    address: "6244 Wycliff Ave",
    city: "Yakima",
    state: "ME",
    zip: 67003,
    phone: "(261)-759-4052",
    name: 'Below 5',
    category: category[:clothing]
  },
  {
    address: "8337 Sunset St",
    city: "Las Vegas",
    state: "MO",
    zip: 94562,
    phone: "(259)-805-5721",
    name: 'Fresh Looks',
    category: category[:clothing]
  },
  {
    address: "350 Robinson Rd",
    city: "Rialto",
    state: "NY",
    zip: 21676,
    phone: "(506)-612-7664",
    name: 'Good Eats',
    category: category[:restaurant]
  },
  {
    address: "4349 Preston Rd",
    city: "Bueblo",
    state: "MS",
    zip: 69399,
    phone: "(867)-952-0521",
    name: 'Fatty Plus',
    category: category[:restaurant]
  },
  {
    address: "9242 Thornridge Cir",
    city: "Montgomery",
    state: "OH",
    zip: 89906,
    phone: "(145)-955-2094",
    name: 'Holly Burger',
    category: category[:restaurant]
  },
  {
    address: "3937 Thornridge Cir",
    city: "Lafayette",
    state: "NH",
    zip: 88355,
    phone: "(216)-155-9153",
    name: 'Bread N Butter',
    category: category[:restaurant]
  },
  {
    address: "7768 Crockett St",
    city: "Honolulu",
    state: "AZ",
    zip: 73462,
    phone: "(747)-860-4487",
    name: 'Pork Chop',
    category: category[:restaurant]
  },
  {
    address: "2612 Robinson Rd",
    city: "Woodbridge",
    state: "TX",
    zip: 16891,
    phone: "(763)-224-3315",
    name: 'Plant Base',
    category: category[:restaurant]
  },
  {
    address: "6634 Frances Ct",
    city: "Lewiston",
    state: "ID",
    zip: 67821,
    phone: "(044)-499-8260",
    name: 'Cholesterol Land',
    category: category[:restaurant]
  },
  {
    address: "981 Northaven Rd",
    city: "Roseburg",
    state: "OK",
    zip: 20634,
    phone: "(501)-908-3013",
    name: 'Eats 4 Two',
    category: category[:restaurant]
  },
  {
    address: "6668 Depaul Dr",
    city: "Columbia",
    state: "AK",
    zip: 86552,
    phone: "(763)-915-2314",
    name: 'Yummy Tummy',
    category: category[:restaurant]
  },
  {
    address: "318 Dane St",
    city: "Vallejo",
    state: "NE",
    zip: 87316,
    phone: "(790)-302-8962",
    name: 'Hunger Beast',
    category: category[:restaurant]
  },
  {
    address: "7497 E Little York Rd",
    city: "Dayton",
    state: "NE",
    zip: 34806,
    phone: "(941)-209-6540",
    name: 'Delicious Bread',
    category: category[:restaurant]
  },
  {
    address: "6783 Spring St",
    city: "Red Bluff",
    state: "MI",
    zip: 43603,
    phone: "(671)-561-4555",
    name: 'Biscuit World',
    category: category[:restaurant]
  },
  {
    address: "316 Stevens Creek Blvd",
    city: "Allen",
    state: "GA",
    zip: 71956,
    phone: "(098)-682-9772",
    name: 'No Diet',
    category: category[:restaurant]
  },
  {
    address: "970 W Dallas St",
    city: "Flint",
    state: "MI",
    zip: 19483,
    phone: "(645)-073-7281",
    name: 'Food N Me',
    category: category[:restaurant]
  },
  {
    address: "8531 Marsh Ln",
    city: "Pembroke Pines",
    state: "NV",
    zip: 12485,
    phone: "(016)-240-2418",
    name: 'Food Bank',
    category: category[:restaurant]
  },
  {
    address: "2390 Railroad St",
    city: "Visalia",
    state: "MN",
    zip: 37572,
    phone: "(767)-941-3636",
    name: "Chef's Touch",
    category: category[:restaurant]
  },
  {
    address: "5354 W Dallas St",
    city: "Aurora",
    state: "RI",
    zip: 25781,
    phone: "(104)-875-6565",
    name: 'Eeeets',
    category: category[:restaurant]
  },
  {
    address: "8039 Central St",
    city: "Seymour",
    state: "ID",
    zip: 20961,
    phone: "(643)-090-9392",
    name: 'Meat Ville',
    category: category[:restaurant]
  },
  {
    address: "3882 Cackson St",
    city: "Milwaukee",
    state: "WY",
    zip: 47932,
    phone: "(810)-137-9515",
    name: 'Young Again',
    category: category[:beauty]
  },
  {
    address: "4280 Oak Lawn Ave",
    city: "Eureka",
    state: "MO",
    zip: 95283,
    phone: "(998)-125-5821",
    name: 'Ulta High Prices',
    category: category[:beauty]
  },
  {
    address: "3745 Paddock Way",
    city: "Birmingham",
    state: "AZ",
    zip: 73222,
    phone: "(354)-777-3457",
    name: 'Whole Sale Beauty Supply',
    category: category[:beauty]
  },
  {
    address: "39 Camden Ave",
    city: "Atlanta",
    state: "CT",
    zip: 79350,
    phone: "(645)-401-5453",
    name: 'Marys Hair Salon',
    category: category[:beauty]
  },
  {
    address: "5611 Nowlin Rd",
    city: "Concord",
    state: "AZ",
    zip: 51997,
    phone: "(253)-866-8753",
    name: 'Lushy',
    category: category[:beauty]
  },
  {
    address: "6874 Avondale Ave",
    city: "Anna",
    state: "HI",
    zip: 62740,
    phone: "(040)-307-2906",
    name: 'Cosmetics',
    category: category[:beauty]
  },
  {
    address: "2729 Elgin St",
    city: "Santa Ana",
    state: "MA",
    zip: 70106,
    phone: "(868)-717-4715",
    name: 'Uplift Cosmetologyy Experts',
    category: category[:beauty]
  },
  {
    address: "4785 Taylor St",
    city: "Norwalk",
    state: "IL",
    zip: 97612,
    phone: "(787)-686-1506",
    name: 'FattyLess',
    category: category[:fitness]
  },
  {
    address: "7453 Spring St",
    city: "Dumas",
    state: "DE",
    zip: 99158,
    phone: "(922)-101-6003",
    name: 'Planet Skinny',
    category: category[:fitness]
  },
  {
    address: "1124 E Sandy Lake Rd",
    city: "Richmond",
    state: "NC",
    zip: 58528,
    phone: "(177)-357-3682",
    name: 'Strong Lifts',
    category: category[:fitness]
  },
  {
    address: "5417 Country Club Rd",
    city: "Centennial",
    state: "KY",
    zip: 39273,
    phone: "(800)-646-5996",
    name: 'Dumbbells',
    category: category[:fitness]
  },
  {
    address: "7840 Spring St",
    city: "Arvada",
    state: "NV",
    zip: 16911,
    phone: "(776)-503-7147",
    name: 'Workout Flex',
    category: category[:fitness]
  },
  {
    address: "2251 Timber Wolf Trail",
    city: "Pearland",
    state: "IN",
    zip: 74144,
    phone: "(289)-131-7374",
    name: 'Strong Works',
    category: category[:fitness]
  },
  {
    address: "2861 Central St",
    city: "Columbus",
    state: "PA",
    zip: 25642,
    phone: "(071)-276-1765",
    name: 'Dedicated',
    category: category[:fitness]
  },
  {
    address: "7718 Valley View Ln",
    city: "San Jose",
    state: "WY",
    zip: 49544,
    phone: "(205)-641-3647",
    name: 'Fitness Me',
    category: category[:fitness]
  },
  {
    address: "8389 Green Rd",
    city: "Van Alstyne",
    state: "WI",
    zip: 64747,
    phone: "(212)-346-8790",
    name: 'Handy Dan',
    category: category[:home_repair]
  },
  {
    address: "5910 Hogan St",
    city: "Fayetteville",
    state: "MD",
    zip: 39672,
    phone: "(543)-745-4318",
    name: 'iFix It',
    category: category[:home_repair]
  },
  {
    address: "9508 Camden Ave",
    city: "Elko",
    state: "IN",
    zip: 83481,
    phone: "(565)-179-7776",
    name: 'Handy Works',
    category: category[:home_repair]
  }
]) do |b|
  b.owner = rand_owner(owners)
  b.monday_open = '09:00'
  b.monday_close = '22:00'
  b.tuesday_open = '09:00'
  b.tuesday_close = '22:00'
  b.wednesday_open =  '09:00'
  b.wednesday_close = '22:00'
  b.thursday_open =  '09:00'
  b.thursday_close =  '22:00'
  b.friday_open =  '09:00'
  b.friday_close = '22:00'
end

businesses += Business.create([{
  name: 'Get Lit',
  category: category[:night_club],
  address: "9504 Mockingbird Hill",
  city: "Jackson",
  state: "SC",
  zip: 89866,
  phone: "(006)-532-9475"
},
{
  name: 'Firehouse',
  category: category[:night_club],
  address: "1163 First Street",
  city: "Lafayette",
  state: "NV",
  zip: 27110,
  phone: "(551)-014-9983"
},
{
  name: 'Space X',
  category: category[:night_club],
  address: "9280 Brown Terrace",
  city: "Nampa",
  state: "VT",
  zip: 61144,
  phone: "(050)-505-0484"
},
{
  name: 'Coders',
  category: category[:night_club],
  address: "6150 Hogan St",
  city: "Princeton",
  state: "SC",
  zip: 63568,
  phone: "(764)-782-0628"
},
{
  name: 'Pipe UP',
  category: category[:night_club],
  address: "1472 Northaven Rd",
  city: "Lowell",
  state: "NE",
  zip: 59892,
  phone: "(019)-768-6365"
},
{
  name: 'Turn Up',
  category: category[:night_club],
  address: "431 Green Rd",
  city: "Bernalillo",
  state: "S.D.",
  zip: 37349,
  phone: "(145)-336-5088"
},
{
  name: 'Day N Nite',
  category: category[:night_club],
  address: "534 W Belt Line Rd",
  city: "Fayetteville",
  state: "NE",
  zip: 93576,
  phone: "(007)-472-4711"
},
{
  name: 'Tipsy',
  address: "8553 Crockett St",
  city: "Elko",
  state: "IL",
  zip: 14296,
  phone: "(430)-276-2229"
}
]) do |b| 
  b.category = category[:night_club]
  b.owner = rand_owner(owners)
  b.friday_open = '19:00'
  b.friday_close = '24:00'
  b.saturday_open = '19:00'
  b.saturday_close = '24:00'
end

#===============================================
# Reviews seed 
#===============================================

reviews = {
  '1' => [
    'Never coming back here again, do not recommend',
    'Would give a zero if I could, worst place on earth',
    'this place is a joke',
    'terrible customer experience',
    'waste of money comming here',
    'just writing a bad review not because of their service, but because im a cheapskate. I am upset that their too high for me to afford'
  ],
  '2' => [
    'This place has gone downhill with new management',
    'long wait times make this place undesirable',
    'had way better experience at other places',
    'just a competitor trying to hurst this company reputaion',
    'save your money and go somewhere else'
  ],
  '3' => [
    'not bad, not the best experience either',
    'good service',
    'offer a wide array of selections. the wait times are a bit annoying though',
    'not bad',
    'my sons had a great time....',
    'The owner is dying and the service so started to go downhill. Cant blame the guy though'
  ],
  '4' => [
    'great overall experience, didnt offer five stars because it felt like too much responsability',
    'Just great',
    'will be comming back again in the futture',
    'great staff, responsive service',
    'highly recommend to friends',
    'not bad, will comeback again this weekend with my friend',
    'everything looks good',
    'great place'
  ],
  '5' => [
    'hidden gem!',
    'highly recommend to everyone, good peoples!!',
    'Best overall experience',
    'Dont look any further, this is the place',
    'everyone in my family recommends this business',
    'great service',
    'do business with them atleast once a year',
    'great service, unbeateable prices',
    'perfect service',
    'always my go to spot',
    'always expet the best'
  ]
}

def rand_rating
  case rand(100) + 1
    when  1..10   then '1'
    when  11..25   then '2'
    when  26..40   then '3'
    when  41..65   then '4'
    when  66..100   then '5'
  end
end

def rand_low_rating
  case rand(100) + 1
    when  1..30   then '1'
    when  31..70   then '2'
    when  71..90   then '3'
    when  91..95   then '4'
    when  96..100   then '5'
  end
end




businesses.each_with_index do |biz, index| 
  bad_businesses = [4, 10, 20, 30, 32, 40, 53]

  users.shuffle.take(rand(7...21)).each do |user|
    rating = bad_businesses.include?(index) ? rand_low_rating : rand_rating
    selected_reviews = reviews[rating]
    rand_review_idx = rand(0..(selected_reviews.length - 1))
    review = selected_reviews[rand_review_idx]
    Review.create(
      rating: rating,
      content: review,
      user: user,
      business: biz
    )
  end
end


