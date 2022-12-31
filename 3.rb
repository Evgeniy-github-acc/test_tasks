# Дана строка s и словарь dict, содержащий некие слова. Определите, можно ли
# строку s сегментировать в последовательность разделенных пробелом слов,
# содержащихся в словаре dict.
# Пример: дано, s = «двадесятка», dict = [«два», «десятка», «девятка»]. Программа
# должна вернуть true, потому что «двадесятка» могут быть сегментированы как «два
# десятка».

s = 'двадесятка'
dict = ['два', 'десятка', 'девятка']


def substrings(s, dict)
  dict.product(dict).map{ |arr| arr.join }.include? s
end
# map => block

p substrings(s, dict)
