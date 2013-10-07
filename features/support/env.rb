require 'capybara'
require 'capybara/rspec'
require './lib/application_world'

World(Capybara::DSL, Capybara::RSpecMatchers)

Capybara.register_driver(:chrome)   { |app| Capybara::Selenium::Driver.new(app, :browser => :chrome) }
Capybara.register_driver(:firefox)  { |app| Capybara::Selenium::Driver.new(app, :browser => :firefox) }

World do
  ApplicationWorld.new
end
