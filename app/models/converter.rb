# Converter class
require 'byebug'
class Converter
  attr_accessor :from, :to, :amount, :price

  def initialize(args)
    @from = args.fetch(:from)
    @to = args.fetch(:to)
    @amount = args.fetch(:amount)
    @price = args[:price]
  end

  def execute
    uri = URI(COINMARKETCAP_ENDPOINT + from + '/?convert=EUR')
    res = Net::HTTP.get_response(uri)
    JSON.parse(res.body).first
  end
end
