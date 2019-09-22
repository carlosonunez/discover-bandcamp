module DiscoverBandcamp
  module Bandcamp
    module Albums
      # Find the latest albums when given a genre.
      # 
      # As of this time of writing, the Bandcamp website gives an initial list of albums
      # when you browse to the page and uses JavaScript to execute an AJAX call to
      # paginate into more albums. This is slightly more complicated than I want to
      # develop for, and since this app is intended to run every week, we probably
      # won't need to go that deep.
      def self.discover
      end
    end
  end
end
