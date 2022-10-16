a = Array.new(5, 0)
a = Array.new(5) do |i| i + 1 end

for i in a.length.times do
  a.push(a[-1] + 1)
  #p(a)
  # wrong ones
  #puts(a)
  #print(a)
end

p(a)

def arraysum(a)
  sum = 0
  for i in a.length.times do
    sum += a[i]
  end
  return sum
end

p(arraysum(a))
