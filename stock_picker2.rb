stock_prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]

def stock_picker(prices_arr)

  calc_arr = []
  result = 0

  prices_arr.each_with_index do |buy_val, buy_index| 
    prices_arr.each_with_index do |sell_val, sell_index|
      if buy_index < sell_index
        price = (buy_val - sell_val)
        if price < result
          result = price
          calc_arr = [buy_index, sell_index]
        end
      end
    end
  end
  return calc_arr
end
      
p stock_picker(stock_prices)  