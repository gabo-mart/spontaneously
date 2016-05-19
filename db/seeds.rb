# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Vendor.create([{
  company:   "Carnival",
  email:   "admin@carnival.com",
  password:   "asdf",
  password_confirmation: "asdf"
  }])

  Ship.create([{
    name: "Carnival Vista",
    tonnage: 133500,
    vendor_id: 1,
    length_in_feet: 1055,
    guest_capacity: 3956,
    onboard_crew: 1450,
    avatar: 'example.png'
  },
  {
    name: "Carnival Breeze",
    tonnage: 130000,
    vendor_id: 1,
    length_in_feet: 1004,
    guest_capacity: 3690,
    onboard_crew: 1386,
    avatar: 'example.png'
  },
  {
    name: "Carnival Paradise",
    tonnage: 70367,
    vendor_id: 1,
    length_in_feet: 855,
    guest_capacity: 2052,
    onboard_crew: 920,
    avatar: 'example.png'
    }])

    User.create([{
      username:   "asdf",
      first_name:   "Ed",
      last_name:   "Toro",
      dob:     DateTime.new(1980, 5, 16),
      country:   "United States",
      address1:   "400 NW 26th Street",
      address2:   "",
      region:   "Miami FL",
      postal_code:   "33123",
      tel:   "305-555-555",
      email:   "ed@wyncode.co",
      password_digest:   "asdf"
      }])

      Package.create([{
        itinerary:   "asdf",
        dates:   "May 27, 2016 - May 29, 2016",
        duration:     "3 days",
        price:   299.99,
        rooms:   1,
        people: 2,
        room_type: "Spa Room",
        avatar: "example.png",
        vendor_id: 1,
        ship_id: 1
        }])
