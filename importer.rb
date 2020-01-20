module CuddlyDollop
  class Importer
    def initialize(client)
      @client = client
    end

    def run(date)
      top_ten_countries_sorted_by_revenue(date).each do |row|
        output = format(
          'Country %s has revenue %s on %s',
          row[:AdvertiserCountry],
          row[:Revenue],
          row[:Date].strftime('%A, %d %b %Y'),
        )
        puts output
      end
    end

    private

    def top_ten_countries_sorted_by_revenue(date)
      report = @client.download_report(%i[advertisercountry], %i[revenue], date)
      # Implement the rest here...
    end
  end
end
