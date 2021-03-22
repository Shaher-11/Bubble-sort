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

def bubble_sort_by(arr)
  idx = 0
  i = 0
  while idx < (arr.length - 1)
    if yield(arr[idx], arr[idx + 1]).positive?
      arr[idx], arr[idx + 1] = arr[idx + 1], arr[idx]
      i += 1
    elsif idx == arr.length - 2 && i.positive?
      i = 0
      idx = 0
    else
      idx += 1
    end
  end
  arr
end

p bubble_sort_by(%w[hi hello hey]) { |left, right| left.length - right.length }
