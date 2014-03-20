module Cucumber
  module Impersonators
    def google_maps
      @google_maps ||= GoogleMaps.new self
    end
  end
end
