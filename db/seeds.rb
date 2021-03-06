# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Country.create ([
  {name: "Bangladesh", country_code: "BD",continent: 'Asia'},
  {name: "Belgium", country_code: "BE", continent: 'Europe'},
  {name: "Burkina Faso", country_code: "BF", continent: 'Africa'},
  {name: "Bulgaria", country_code: "BG", continent: 'Europe'},
  {name: "Bosnia and Herz", country_code: "BA", continent: 'Europe'},
  {name: "Brunei", country_code: "BN", continent: 'Asia'},
  {name: "Bolivia", country_code: "BO", continent: 'South America'},
  {name: "Japan", country_code: "JP", continent: 'Asia'},
  {name: "Burundi", country_code: "BI", continent: 'Africa'},
  {name: "Benin", country_code: "BJ", continent: 'Africa'},
  {name: "Bhutan", country_code: "BT", continent: 'Asia'},
  {name: "Jamaica", country_code: "JM", continent: 'North America'},
  {name: "Botswana", country_code: "BW", continent: 'Africa' },
  {name: "Brazil", country_code: "BR", continent: 'South America'},
  {name: "Bahamas", country_code: "BS", continent: 'North America'},
  {name: "Belarus", country_code: "BY", continent: 'Europe'},
  {name: "Belize", country_code: "BZ", continent: 'North America'},
  {name: "Russia", country_code: "RU", continent: 'Europe'},
  {name: "Rwanda", country_code: "RW", continent: 'Africa'},
  {name: "Serbia", country_code: "RS", continent: 'Europe'},
  {name: "Timor-Leste", country_code: "TL", continent: 'Africa'},
  {name: "Turkmenistan", country_code: "TM", continent: 'Asia'},
  {name: "Tajikistan", country_code: "TJ", continent: 'Asia'},
  {name: "Romania", country_code: "RO", continent: 'Europe'},
  {name: "Guinea-Bissau", country_code: "GW", continent: 'Africa'},
  {name: "Guatemala", country_code: "GT", continent: 'North America'},
  {name: "Greece", country_code: "GR", continent: 'Europe'},
  {name: "Eqguinea", country_code: "GQ", continent: 'Africa'},
  {name: "Guyana", country_code: "GY", continent: 'Africa'},
  {name: "Georgia", country_code: "GE", continent: 'Europe'},
  {name: "United Kingdom", country_code: "GB", continent: 'Europe'},
  {name: "Gabon", country_code: "GA", continent: "Africa"},
  {name: "Guinea", country_code: "GN", continent: "Africa"},
  {name: "Gambia", country_code: "GM", continent: "Africa"},
  {name: "Greenland", country_code: "GL", continent: "Europe"},
  {name: "Ghana", country_code: "GH", continent:"Africa"},
  {name: "Oman", country_code: "OM", continent: "Asia"},
  {name: "Tunisia", country_code: "TN", continent: "Africa"},
  {name: "Jordan", country_code: "JO", continent: "Asia"},
  {name: "Croatia", country_code: "HR", continent: "Europe"},
  {name: "Haiti", country_code: "HT", continent: "North America"},
  {name: "Hungary", country_code: "HU", continent: "Europe"},
  {name: "Honduras", country_code: "HN", continent: "North America"},
  {name: "Puerto Rico", country_code: "PR", continent: "North America"},
  {name: "Palestine", country_code: "PS", continent: "Asia"},
  {name: "Portugal", country_code: "PT", continent: "Europe"},
  {name: "Paraguay", country_code: "PY", continent: "South America"},
  {name: "Panama", country_code: "PA", continent: "North America"},
  {name: "Papua New Guinea", country_code: "PG", continent: "Africa"},
  {name: "Peru", country_code: "PE", continent: "South America"},
  {name: "Pakistan", country_code: "PK", continent: "Asia"},
  {name: "Philippines", country_code: "PH", continent: "Asia"},
  {name: "Poland", country_code: "PL", continent: "Europe"},
  {name: "Zambia", country_code: "ZM", continent:"Africa"},
  {name: "Wsahara", country_code: "EH", continent:"Africa"},
  {name: "Estonia", country_code: "EE", continent: "Europe"},
  {name: "Egypt", country_code: "EG", continent: "Africa"},
  {name: "South Africa", country_code: "ZA", continent: "Africa"},
  {name: "Ecuador", country_code: "EC", continent: "South America"},
  {name: "Italy", country_code: "IT", continent: "Europe"},
  {name: "Vietnam", country_code: "VN", continent: "Asia"},
  {name: "Solomon Sslands", country_code: "SB", continent: "Oceania"},
  {name: "Ethiopia", country_code: "ET", continent: "Africa"},
  {name: "Somalia", country_code: "SO", continent: "Africa"},
  {name: "Zimbabwe", country_code:"ZW", continent: "Africa"},
  {name: "Spain", country_code: "ES", continent: "Europe"},
  {name: "Eritrea", country_code: "ER", continent: "Africa"},
  {name: "Montenegro", country_code: "ME", continent: "Europe"},
  {name: "Moldova", country_code:"MD", continent: "Europe"},
  {name: "Madagascar", country_code: "MG", continent: "Africa"},
  {name: "Morocco", country_code:"MA" , continent: "Africa"},
  {name: "Uzbekistan", country_code: "UZ", continent: "Asia"},
  {name: "Myanmar", country_code: "MM", continent: "Asia"},
  {name: "Mali", country_code: "ML", continent: "Africa"},
  {name: "Mongolia", country_code:"MN" , continent: "Asia"},
  {name: "Macedonia", country_code: "MK", continent: "Europe"},
  {name: "Malawi", country_code: "MW", continent: "Africa"},
  {name: "Mauritania", country_code: "MR", continent: "Africa"},
  {name: "Uganda", country_code: "UG", continent: "Africa"},
  {name: "Malaysia", country_code: "MY", continent: "Asia"},
  {name: "Mexico", country_code: "MX", continent: "North America"},
  {name: "Israel", country_code: "IL", continent: "Asia"},
  {name: "France", country_code: "FR", continent: "Europe"},
  {name: "Somaliland", country_code: "XS", continent: "Africa"},
  {name: "Finland", country_code: "FI", continent: "Europe"},
  {name: "Fiji", country_code: "FJ", continent: "Oceania"},
  {name: "Falkland Is.", country_code: "FK", continent:"Oceania"},
  {name: "Nicaragua", country_code:  "NI", continent: "North America"},
  {name: "Netherlands", country_code: "NL", continent: "Europe"},
  {name: "Norway", country_code: "NO", continent: "Europe"},
  {name: "Namibia", country_code:  "NA", continent:"Africa" },
  {name: "Vanuatu", country_code: "VU", continent: "Oceania"},
  {name: "New Caledonia", country_code: "NC", continent: "Oceania"},
  {name: "Niger", country_code: "NE", continent: "Africa"},
  {name: "Nigeria", country_code:"NG", continent: "Africa"},
  {name: "New Zealand", country_code: "NZ", continent: "Oceania"},
  {name: "Nepal", country_code: "NP", continent: "Asia"},
  {name: "Kosovo", country_code: "XK", continent: "Europe"},
  {name: "Cote d'Ivoire", country_code: "CI", continent: "Africa"},
  {name: "Switzerland", country_code: "CH", continent: "Europe"},
  {name: "Colombia", country_code: "CO", continent: "South America"},
  {name: "China", country_code: "CN", continent: "Asia"},
  {name: "Cameroon", country_code: "CM", continent: "Africa"},
  {name: "Chile", country_code: "CL", continent: "South America"},
  {name: "N Cyprus", country_code: "XC", continent: "Europe"},
  {name: "Canada", country_code: "CA", continent: "North America"},
  {name: "Congo", country_code: "CG", continent: "Africa"},
  {name: "Central African Rep", country_code: "CF", continent: "Africa"},
  {name: "Dem Rep Congo", country_code:  "CD", continent: "Africa"},
  {name: "Czech Republic", country_code: "CZ", continent: "Europe"},
  {name: "Cyprus", country_code: "CY", continent: "Europe"},
  {name: "Costa Rica", country_code: "CR" , continent: "North America"},
  {name: "Cuba", country_code:  "CU", continent: "North America"},
  {name: "Swaziland", country_code: "SZ", continent: "Africa"},
  {name: "Syria", country_code: "SY", continent: "Asia"},
  {name: "Kyrgyzstan", country_code:  "KG", continent: "Asia"},
  {name: "Kenya", country_code: "KE", continent: "Africa"},
  {name: "Sudan", country_code: "SS", continent: "Africa"},
  {name: "Suriname", country_code: "SR", continent: "Africa"},
  {name: "Cambodia", country_code: "KH", continent: "Asia"},
  {name: "El Salvador", country_code: "SV", continent: "South America"},
  {name: "Slovakia", country_code: "SK", continent: "Europe"},
  {name: "South Korea", country_code: "KR", continent: "Asia"},
  {name: "Slovenia", country_code: "SI", continent: "Europe"},
  {name: "North Korea", country_code: "KP", continent: "Asia"},
  {name: "Kuwait", country_code: "KW", continent: "Asia"},
  {name: "Senegal", country_code: "SN", continent: "Africa"},
  {name: "Sierra Leone", country_code: "SL", continent: "Africa"},
  {name: "Kazakhstan", country_code: "KZ", continent: "Asia"},
  {name: "Saudi Arabia", country_code: "SA", continent: "Asia"},
  {name: "Sweden", country_code: "SE", continent: "Europe"},
  {name: "Dominican Rep", country_code: "DO", continent: "North America"},
  {name: "Djibouti", country_code: "DJ", continent: "Africa"},
  {name: "Denmark", country_code: "DK", continent: "Europe"},
  {name: "Germany", country_code: "DE", continent: "Europe"},
  {name: "Yemen", country_code: "YE", continent: "Asia"},
  {name: "Algeria", country_code: "DZ", continent: "Africa"},
  {name: "United States", country_code: "US", continent: "North America"},
  {name: "Uruguay", country_code: "UY", continent: "South America"},
  {name: "Lebanon", country_code: "LB", continent: "Asia"},
  {name: "Laos", country_code: "LA", continent: "Asia"},
  {name: "Taiwan", country_code: "TW", continent: "Asia"},
  {name: "Trinidad and Tobago", country_code: "TT", continent: "South America"},
  {name: "Turkey", country_code: "TR", continent: "Europe"},
  {name: "Sri Lanka", country_code: "LK", continent: "Asia"},
  {name: "Latvia", country_code: "LV", continent: "Europe"},
  {name: "Lithuania", country_code: "LT", continent: "Europe"},
  {name: "Luxembourg", country_code: "LU", continent: "Europe"},
  {name: "Liberia", country_code: "LR", continent: "Africa"},
  {name: "Lesotho", country_code: "LS", continent: "Africa"},
  {name: "Thailand", country_code: "TH", continent: "Asia"},
  {name: "Antartica", country_code: "TF", continent: "Antartica"},
  {name: "Togo", country_code: "TG", continent: "Africa"},
  {name: "Chad", country_code: "TD", continent: "Africa"},
  {name: "Libya", country_code: "LY", continent: "Asia"},
  {name: "United Arab Emirates", country_code: "AE", continent: "Asia"},
  {name: "Venezuela", country_code: "VE", continent: "South America"},
  {name: "Afghanistan", country_code: "AF", continent: "Asia"},
  {name: "Iraq", country_code: "IQ", continent: "Asia"},
  {name: "Iceland", country_code: "IS", continent: "Europe"},
  {name: "Iran", country_code:"IR" , continent: "Asia"},
  {name: "Armenia", country_code: "AM", continent:"Asia"},
  {name: "Albania", country_code: "AL", continent: "Europe"},
  {name: "Angola", country_code: "AO", continent: "Africa"},
  {name: "Argentina", country_code: "AR", continent: "South America"},
  {name: "Australia", country_code:  "AU", continent: "Oceania"},
  {name: "Austria", country_code:"AT", continent: "Europe"},
  {name: "India", country_code: "IN", continent: "Asia"},
  {name: "Tanzania", country_code: "TZ", continent: "Africa"},
  {name: "Azerbaijan", country_code:"AZ", continent: "Asia"},
  {name: "Ireland", country_code: "IE", continent: "Europe"},
  {name: "Indonesia", country_code: "ID", continent: "Asia"},
  {name: "Ukraine", country_code: "UA", continent: "Europe"},
  {name: "Qatar", country_code: "QA", continent: "Asia"},
  {name: "Mozambique", country_code:  "MZ", continent: "Africa"},
  ]);
