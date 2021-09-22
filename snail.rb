def snail(array)
  return array.flatten if array.length < 2
  sqrt = Math.sqrt(array.flatten.length)
  newarr = []
  (sqrt.to_i - 1).times do
    newarr << array[0]
    array.shift
    i = 0
    array.map do |arr|
      newarr << arr.last
      arr.pop
    end

    newarr << array.last.reverse if !array.empty?
    array.pop
    array.reverse.map do |arr|
      newarr << arr.first
      arr.shift
    end
  end
  newarr.flatten.reject { |e| e.to_s.empty? }
end
