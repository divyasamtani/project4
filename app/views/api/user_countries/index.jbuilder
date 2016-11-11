json.array! @user_countries do |usercountry|
  json.merge! usercountry.attributes
  json.name usercountry.name
end