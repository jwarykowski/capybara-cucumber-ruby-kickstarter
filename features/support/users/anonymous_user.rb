module Cucumber
  module Impersonators
    class AnonymousUser
      def initialize(world)
        @world = world
      end

      def search(term)
      	@world.fill_in 'q', :with => term
      	@world.click_button('gbqfb')
      end
    end
  end
end