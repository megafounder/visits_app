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