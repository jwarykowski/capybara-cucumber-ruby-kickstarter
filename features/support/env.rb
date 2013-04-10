require 'rubygems'
require 'bundler'
require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'capybara/webkit'
require 'pry'

require_relative 'application_world'

World do
	ApplicationWorld.new
end