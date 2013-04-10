require_relative 'impersonators/application_impersonators.rb'
require_relative 'impersonators/user_impersonators.rb'

class ApplicationWorld
	include Cucumber::Impersonators
end