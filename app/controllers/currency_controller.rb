class CurrencyController < ApplicationController
  def new
    @currency = Currency.new
    @currencies = Currency.all
  end
end
