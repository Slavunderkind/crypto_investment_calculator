# Converter class
class Converter
  attr_accessor :from, :to, :amount, :price

  def initialize(args)
    @from = args.fetch(:from)
    @to = args.fetch(:to)
    @amount = args.fetch(:amount)
    @price = args[:price]
  end
end
