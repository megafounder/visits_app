loc = Location.create name: 'MOB', city: 'Barcelona', country: 'Catalonia'
Location.create name: 'Sagrada Familia', city: 'Barcelona', country: 'Catalonia'
Location.create name: 'Golden Gate', city: 'San Francisco', country: 'USA'
Location.create name: 'Market Street', city: 'San Francisco', country: 'USA'
loc2 = Location.create name: 'Statue of Liberty', city: 'New York', country: 'USA'
Location.create name: 'Big Ben', city: 'London', country: 'UK'
Location.create name: 'MI6', city: 'London', country: 'UK'
Location.create name: 'Buckingham Palace', city: 'London', country: 'UK'

Visit.create  location: loc,  user_name: 'Benja troll', from_date: Time.now, to_date: Time.now + 1.hours
Visit.create  location: loc2,  user_name: 'Martin troll', from_date: Time.now, to_date: Time.now + 1.hours
Visit.create  location: loc,  user_name: 'Sergio troll', from_date: Time.now, to_date: Time.now + 1.hours
Visit.create  location: loc2,  user_name: 'Nick troll', from_date: Time.now, to_date: Time.now + 1.hours
Visit.create  location: loc,  user_name: 'Ricard troll', from_date: Time.now, to_date: Time.now + 1.hours

User.create  name: 'troll', location_id: 1, visit_id: 1, premium: true
User.create  name: 'manuel', location_id: 2, visit_id: 1, premium: false
User.create  name: 'javi', location_id: 1, visit_id: 2, premium: true
User.create  name: 'berta', location_id: 3, visit_id: 2, premium: false