require "faker"

def prepare
  puts "--- cleaning the db ---"
  Team.destroy_all
  puts "    destroying all members..."
  Member.destroy_all
  puts "--- database now clean ---"
  puts ""
end

def teams(number)
  puts "--- creating #{number} teams ---"
  number.times {
    name = Faker::Team.name

    Team.create!({
      name: name
    })
  }
  puts "--- #{Team.last.name} has been added to the db ---"
  puts "--- team seeding completed ---"
  puts "--------------------"
end

def members(number)
  puts "--- creating #{number} members ---"
  number.times {
    team_id = Team.all.ids.sample
    name = Faker::Name.name,
    position = ['Centre-back', 'Sweeper', 'Full-back', 'Wing-back', 'Centre midfield', 'Defensive midfield', 'Attacking midfield', 'Wide midfield', 'Centre forward', 'Second striker', 'Winger'].sample,
    phone = Faker::PhoneNumber.cell_phone
    email = Faker::Internet.email

    Member.create!({
      team_id: team_id,
      name: name,
      position: position,
      phone: phone,
      email: email
    })
    sleep(2)
  }
  puts "--- New member #{Member.first.name} has been added to the db"
  puts "--- member seeding completed ---"
  puts "--------------------"
end

prepare
puts "--- seeding the db ---"

# Creating 20 teams
teams(20)
# Creating 60 members belonging to the random 20 teams for the user journey
members(60)

puts "--- whooop - all seeding completed ---"

