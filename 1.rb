# Напишите программу, которая выводит на экран числа от 1 до 100. При этом вместо
# чисел, кратных 3, программа должна выводить слово «Hi», а вместо чисел, кратных 5
# — слово «By». Если число кратно и 3, и 5, то программа должна выводить слово
# «HiBy».

def hi_by(n)
  (1..n).each do |i|
    string = ''
    string += "Hi" if (i % 3) == 0
    string += "By" if (i % 5) == 0
    string += i.to_s if string == ''
    puts string
  end
end

hi_by(100)
