class Currency
  attr_accessor :name, :short_name, :price_usd, :price_eur

  def initialize(args)
    @name = args[:name]
  end

  def self.price
    uri = URI(COINMARKETCAP_ENDPOINT + name + '/?convert=EUR')
    res = Net::HTTP.get_response(uri)
    JSON.parse(res.body).first["price_usd"]
  end
end
