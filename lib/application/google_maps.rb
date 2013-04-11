module Cucumber
  module Impersonators
    class GoogleMaps

      # Initialize
      # 
      # @param [Object] world cucumber world
      def initialize(world)
        @world = world

        # Register drivers
        Capybara.register_driver(:chrome) 	{ |app| Capybara::Selenium::Driver.new(app, :browser => :chrome) }
				Capybara.register_driver(:firefox) 	{ |app| Capybara::Selenium::Driver.new(app, :browser => :firefox) }

        # Configure capybara
      	configure
      end

      # Configures capybara
      def configure
      	Capybara.configure do |config|
				  config.run_server 				= false
				  config.default_wait_time 	= 15
				  config.app_host 					= host
				  config.default_driver 		= driver
				end
      end

      # Returns Capybara app_host
      def host 
      	'https://www.google.com'
      end

      # Returns the capybara default driver
      def driver
      	ENV['CONTROLLER'].to_sym
      end

      # Opens google maps
 			def open_google_maps
 				@world.visit '/maps'
 			end

      # Verifies the google maps search page
      # 
      # @param [String] search_result google map search result
      def verify_result(search_result)
        @world.within("div#resultspanel") do
          @world.page.should @world.have_content search_result
        end
      end
    end
  end
end