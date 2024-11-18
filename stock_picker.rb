class Stock
    def initialize(prices)
        @prices = prices
    end
 
    def stock_picker
        min_index = 0
        max_index = 0
        max_profit = 0

        @prices.each_with_index do |price, index|
            if price < @prices[min_index]
                min_index = index
            end

            if price - @prices[min_index] > max_profit
                max_profit = price - @prices[min_index]
                max_index = index
            end
        end
        
        { days: [min_index, max_index], profit: max_profit }
    end
end

prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]

stock_picker = Stock.new(prices)
result = stock_picker.stock_picker
puts "Buy nad sell ond days: #{result[:days]}, and the protit is #{result[:profit]}}$"
