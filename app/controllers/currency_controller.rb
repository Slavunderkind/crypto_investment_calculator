class CurrencyController < ApplicationController
  def new
    byebug
    @currency = Currency.new
    @currencies = Currency.all
  end
end
