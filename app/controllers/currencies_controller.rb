require 'net/http'

class CurrenciesController < ApplicationController
  def new
    uri = URI(COINMARKETCAP_ENDPOINT)
    res = Net::HTTP.get_response(uri)
    @all = JSON.parse(res.body)
    @crypto_names = all_crypto_names
  end

  def index; end

  def create; end

  private

  def all_crypto_names
    @all.each_with_object([]) do |line, result|
      result << line['id']
    end
  end
end
