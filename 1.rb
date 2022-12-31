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
