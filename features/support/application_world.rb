require_relative 'impersonators/application_impersonators'
require_relative 'impersonators/user_impersonators'

class ApplicationWorld
	include Cucumber::Impersonators
end