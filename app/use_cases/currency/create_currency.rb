module UseCases
  module Currency
    class CreateCurrency
      def execute(args)
        currency = Currency.new(args)
      end
    end
  end
end