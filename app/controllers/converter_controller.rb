require 'net/http'

class ConverterController < ApplicationController
  def new
    uri = URI(COINMARKETCAP_ENDPOINT)
    res = Net::HTTP.get_response(uri)
    @cryptos = JSON.parse(res.body)
    @crypto_names = all_crypto_names
  end

  def index; end

  def create
    currency = Currency.new(name: converter_params["from"])
    price = currency.price
  end

  private

  def all_crypto_names
    @cryptos.each_with_object([]) do |line, result|
      result << line['id']
    end
  end

  def converter_params
    params.require(:converter).permit!
  end
end
