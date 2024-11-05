# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# University of Memphis

team1 = Team.create!(
  name:      'University of Memphis',
  home_city: 'Memphis, TN'
)

team1_p1=Player.create!(
  first_name: 'D.J.',
  last_name:  'Jeffries',
  position:   'F',
  team:     team1
)

team1_p2=Player.create!(
  first_name: 'Jayden',
  last_name:  'Hardaway',
  position:   'G',
  team:     team1
)

team1_p3=Player.create!(
  first_name: 'Alex',
  last_name:  'Lomax',
  position:   'G',
  team:     team1
)

# Duke University

team2 = Team.create!(
  name:      'Duke University',
  home_city: 'Durham, NC'
)

team2_p1=Player.create!(
  first_name: 'Wendell',
  last_name:  'Moore, Jr.',
  position:   'F',
  team:     team2
)

team2_p2=Player.create!(
  first_name: 'Jalen',
  last_name:  'Johnson',
  position:   'F',
  team:     team2
)

team2_p3=Player.create!(
  first_name: 'DJ',
  last_name:  'Steward',
  position:   'G',
  team:     team2
)

# Michigan State University

team3 = Team.create!(
  name:      'Michigan State University',
  home_city: 'East Lansing, MI'
)

team3_p1=Player.create!(
  first_name: 'Aaron',
  last_name:  'Henry',
  position:   'F',
  team:     team3
)

team3_p2=Player.create!(
  first_name: 'Joshua',
  last_name:  'Langford',
  position:   'G',
  team:     team3
)

team3_p3=Player.create!(
  first_name: 'Rocket',
  last_name:  'Watts',
  position:   'G',
  team:     team3
)
