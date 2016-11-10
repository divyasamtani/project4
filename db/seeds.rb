# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Country.create ([
  {name: "Bangladesh", country_code: "BD"},
  {name: "Belgium", country_code: "BE"},
  {name: "Burkina Faso", country_code: "BF"},
  {name: "Bulgaria", country_code: "BG"},
  {name: "BosniaandHerz", country_code: "BA"},
  {name: "Brunei", country_code: "BN"},
  {name: "Bolivia", country_code: "BO"},
  {name: "Japan", country_code: "JP"},
  {name: "Burundi", country_code: "BI"},
  {name: "Benin", country_code: "BJ"},
  {name: "Bhutan", country_code: "BT"},
  {name: "Jamaica", country_code: "JM"},
  {name: "Botswana", country_code: "BW"},
  {name: "Brazil", country_code: "BR"},
  {name: "Bahamas", country_code: "BS"},
  {name: "Belarus", country_code: "BY"},
  {name: "Belize", country_code: "BZ"},
  {name: "Russia", country_code: "RU"},
  {name: "Rwanda", country_code: "RW"},
  {name: "Serbia", country_code: "RS"},
  {name: "Timor-Leste", country_code: "TL"},
  {name: "Turkmenistan", country_code: "TM"},
  {name: "Tajikistan", country_code: "TJ"},
  {name:  "Romania", country_code: "RO"},
  {name: "Guinea-Bissau", country_code: "GW"},
  {name:  "Guatemala", country_code: "GT"},
  {name: "Greece", country_code: "GR"},
  {name: "Eqguinea", country_code: "GQ"},
  {name: "Guyana", country_code: "GY"},
  {name: "Georgia", country_code: "GE"},
  {name: "Unitedkingdom", country_code: "GB"},
  {name: "Gabon", country_code: "GA"},
  ]);

User.create([
  {name: "Joe Jones", bio: "I love travelling!", travel_percentage: 54, world_coverage: 65}
  ]);

UserCountry.create([
  {user_id: 1, country_id: 1}
  ]);

TravelNote.create([
  {title: "London trip", body: "Go to Buckingham Palace", user_id: "1"}
  ]);
