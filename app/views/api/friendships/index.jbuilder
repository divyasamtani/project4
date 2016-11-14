json.array! @friendships do |friendship|
  json.merge!             friendship.attributes
  json.friend             friendship.friend
end
