module CuddlyDollop
  class Importer
    def initialize(client)
      @client = client
    end

    def run(date)
      top_ten_countries_sorted_by_revenue(date).each do |row|
        output = format(
          'Country %s has revenue %s on date %s',
          row[:AdvertiserCountry],
          row[:Revenue],
          row[:Date],
        )
        puts output
      end
    end

    private

    def top_ten_countries_sorted_by_revenue(date)
      # Implement me
    end
  end
end
