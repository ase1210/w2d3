def my_uniq(arr)
  results = []
  arr.each do |el|
    results << el unless results.include?(el)
  end
  results
end

def two_sum(arr)
  results = []
  
  i = 0
  while i < arr.length - 1
    j = i + 1
    while j < arr.length
      results << [i, j] if arr[i] + arr[j] == 0
      j += 1
    end
    i += 1
  end

  results
end

def my_transpose(arr)
  results = Array.new(3) { Array.new }

  arr.length.times do |col|
    arr.length.times do |row|
      results[col] << arr[row][col]
    end
  end

  results
end

def stock_picker(arr)
  result = []
  max_profit = 0
  buy_day = nil
  sell_day = nil

  arr.each.with_index do |p1, i1|
    arr.each.with_index do |p2, i2|
      next unless i2 > i1
      profit = p2 - p1
      if profit > max_profit
        max_profit = profit 
        buy_day = i1
        sell_day = i2
      end
    end
  end
  result += [buy_day, sell_day] unless buy_day.nil?
  result
end

