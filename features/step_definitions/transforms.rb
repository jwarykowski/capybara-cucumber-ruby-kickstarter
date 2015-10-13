Transform(/^google maps$/) do |impersonator|
  google_maps
end

Transform(/^the user$/) do |impersonator|
  @current_user
end

Transform(/^a anonymous user$/) do |impersonator|
  a_anonymous_user
end
