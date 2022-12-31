# Имеется строка набранная в разном регистре, например: «ВотТакаяСтрока»
# требуется получить в результате строку где буквы меняют регистр, то есть:
# «вОТтАКАЯсТРОКА». Напишите, пожалуйста, код.

s = 'ВотТакаяСтрока'

puts s.swapcase

#////////////////////////////////////////////////////////////

class String
  def is_upper?
    self == self.upcase
  end

  def is_lower?
    self == self.downcase
  end
end

def swapcase_own(s)
  f = ''
  s.each_char do |char|
    if char.is_upper?
      f += char.downcase!
    elsif char.is_lower?
      f += char.upcase!
    else
      f += char
    end
  end
  f
end


s = 'ВотТакаяСтрока'
puts swapcase_own(s)
