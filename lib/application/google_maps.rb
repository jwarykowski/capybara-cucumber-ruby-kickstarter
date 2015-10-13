module Cucumber
  module Impersonators
    class GoogleMaps

      def method_missing(meth, *args, &block)
        @world.send(meth, *args, &block)
      end

      def initialize(world)
        @world = world
        configure
      end

      def configure
        Capybara.configure do |config|
          config.run_server = false
          config.default_max_wait_time = 15
          config.app_host = host
          config.default_driver = driver
        end
      end

      def driver
        ENV['DRIVER'].to_sym
      end

      def host
        'https://www.google.com'
      end

      def open_google_maps
        visit '/maps'
      end

      def verify_search_result(search_result)
        within("h1#widget-pane-section-header-title") do
          page.assert_text search_result
        end
      end

    end
  end
end
