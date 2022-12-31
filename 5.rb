# Дан треугольник. Найдите минимальный путь от вершины до основания. На каждом
# шаге вы можете двигаться только на соседние цифры, находящиеся в ряду ниже.
# Пример:
# [
# [2],
# [3,4],
# [6,5,7],
# [4,1,8,3]
# ]
# Здесь длина минимального пути от вершины до основания равна 11 (т.к 2+3+5+1 = 11)


def minimum_path(triangle, row, col, path)
  return path << triangle[row][col] if row == triangle.size - 1

  left_path = minimum_path(triangle, row + 1, col, path + [triangle[row][col]])
  right_path = minimum_path(triangle, row + 1, col + 1, path + [triangle[row][col]])
  
  return left_path if left_path.sum < right_path.sum
  right_path
end

triangle = [[2], [3,4], [6,5,7], [4,1,8,3]]

puts minimum_path(triangle, 0, 0, []) 
