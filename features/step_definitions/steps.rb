Given(/^I have opened (google maps) as (a anonymous user)$/) do |application, user|
  application.open_google_maps
  @current_user = user
end

When(/^(the user) searches for "(.*?)"$/) do |user, term|
  user.search(term)
end

Then(/^(google maps) should have a "(.*?)" search result$/) do |application, search_result|
  application.verify_search_result(search_result)
end
