module Cucumber
  module Impersonators
    class GoogleMaps

      # Initialize
      #
      # @param [Object] world cucumber world
      def initialize(world)
        @world = world

        # Configure capybara
      	configure
      end

      # Method missing
      def method_missing(meth, *args, &block)
        @world.send(meth, *args, &block)
      end

      # Configures capybara
      def configure
        Capybara.configure do |config|
          config.run_server         = false
          config.default_wait_time  = 15
          config.app_host           = host
          config.default_driver     = driver
        end
      end

      # Returns capybara app_host
      def host
      	'https://www.google.com'
      end

      # Returns the capybara default driver
      def driver
      	ENV['CONTROLLER'].to_sym
      end

      # Opens google maps
      def open_google_maps
        visit '/maps'
      end

      # Verifies the google maps search page for result
      #
      # @param [String] search_result google map search result
      def verify_search_result(search_result)
        within("div#resultspanel") do
          page.should @world.have_content search_result
        end
      end
    end
  end
end