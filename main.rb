# frozen_string_literal: true

def bubble_sort(arr)
  i = arr.length - 1

  i.times do
    (0...i).each do |idx|
      if arr[idx] > arr[idx + 1]
        arr[idx], arr[idx + 1] = arr[idx + 1], arr[idx]
        p arr
      end
    end
    i -= 1
  end
end

arr = [2, 1, 3, 5, 4, 7, 6]
bubble_sort(arr)

def bubble_sort_by(array)
  idx = 0
  i = 0
  while idx < arr.length-1
    if yield(arr[idx],arr[idx + 1]) > 0
      arr[idx], arr[idx + 1] = arr[idx + 1], arr[idx]
      i += 1
    end
end
