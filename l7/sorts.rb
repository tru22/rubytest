def swap(a, i, j) # array, index, index
  tmp = a[i]
  a[i] = a[j]
  a[j] = tmp
end

def bubblesort(a)
  done_flag = true
  while done_flag != false do
    done_flag = false
    0.step(a.length - 2) do |i|
      if a[i] > a[i + 1]
        swap(a, i, i + 1)
        done_flag = true
      end
    end
  end
end

arr = [2, 3, 1, 9, 8, 10]
=begin
p(arr)
bubblesort(arr) # works like call-by-reference
p(arr)
=end

def min_index(a, j, k)
  min = a[j]
  index_min = j
  j.step(k) do |i|
    if a[i] < min
      min = a[i]
      index_min = i
    end
  end
  
  return index_min
end

def selectionsort(a)
  0.step(a.length - 1) do |i|
    idx = min_index(a, i, a.length - 1)
    swap(a, i, idx)
  end

  return a
end

=begin
p(arr)
p(selectionsort(arr))
=end

def shiftlarger(a, i, x)
  while a[i - 1] > x and i != 0 do
    swap(a, i - 1, i)
    i -= 1
  end
end

def insertionsort(a)
  0.step(a.length - 1) do |i|
    shiftlarger(a, i, a[i])
  end
end

=begin
p(arr)
insertionsort(arr)
p(arr)
=end

def randarray(n)
  return Array.new(n) do rand(10000) end
end

def bench
  t1 = Process.times.utime
  yield
  t2 = Process.times.utime
  return t2 - t1
end

arr = randarray(1000)
p(bench do bubblesort(arr) end)
arr = randarray(1000)
p(bench do selectionsort(arr) end)
arr = randarray(1000)
p(bench do insertionsort(arr) end)
