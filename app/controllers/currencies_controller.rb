require 'net/http'

class CurrenciesController < ApplicationController
  def new
    uri = URI(COINMARKETCAP_ENDPOINT)
    @all = Net::HTTP.get_response(uri).body # => String
  end

  def index
  end

  def create; end
end
