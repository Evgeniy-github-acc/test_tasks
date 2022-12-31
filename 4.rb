# Найдите непрерывный подмассив в массиве (содержащем как минимум 1 элемент),
# который имеет максимальную сумму элементов.
# Пример: [-1, -13, -2, 1, -3, 4, -1, 2, 1, -5, 4] должно вернуть [4, -1, 2, 1].
 
array = [-1, -13, -2, 1, -3, 4, -1, 2, 1, -5, 4]

def max_sum_subarray(arr)
  (0...arr.size).reduce([arr.first]) do |max_sub, i|
    (i...arr.size).each { |j| max_sub = arr[i..j] if max_sub.reduce(&:+) < arr[i..j].reduce(&:+) }
    max_sub
  end
end

p max_sum_subarray(array)
