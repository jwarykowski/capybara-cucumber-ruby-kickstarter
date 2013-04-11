module Cucumber
  module Impersonators
    class AnonymousUser
      def initialize(world)
        @world = world
      end

      # Method missing
      def method_missing(meth, *args, &block)
        @world.send(meth, *args, &block)
      end

      # Search for term
      #
      # @param [String] term the search term
      def search(term)
      	fill_in 'q', :with => term
      	click_button('gbqfb')
      end
    end
  end
end