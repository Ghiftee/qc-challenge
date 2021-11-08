def quick_sort(array)
  if array.length > 1
    pivot = array.pop
    left, right = [], []
    for value in array
      value <= pivot ? left.push(value) : right.push(value)
    end

    array = quick_sort(left) + [pivot] + quick_sort(right)
  end

  array
end

p quick_sort([4, 5, 3, 9, 1])
# => [1, 3, 4, 5, 9]