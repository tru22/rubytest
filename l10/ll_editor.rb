Cell = Struct.new(:data, :next)
list_num = Cell.new(1, Cell.new(2, Cell.new(3, nil)))
list_str = Cell.new("A", Cell.new("B", Cell.new("C", Cell.new("D", Cell.new("E", nil)))))

def nlist1(n)
  p = nil
  n.times do |i|
    p = Cell.new(n, p) # linked
  end
  return p
end

def nlist1rev(n)
  p = nil
  n.times do |i|
    p = Cell.new(n - i, p) # linked
  end
  return p
end

def nlist1_rec(n)
  if n <= 0
    return nil
  else
    return Cell.new(n, nlist1_r(n - 1))
  end
end

def nlist1_rec_l(l)
  p = nil
  l.each do |i|
    p = Cell.new(i, p)
  end
  return p
end

def odddel(p)
  if p.next != nil
    return Cell.new(p.data, odddel(p.next.next))
  else
    return p
  end
end

def concatcells(p, q)
  if p != nil
    return Cell.new(p.data, concatcells(p.next, q))
  else
    return q
  end
end

def reverse(p)
  datas = []
  q = nil
  while p != nil do
    datas.push(p.data)
    p = p.next
  end
  datas.each do |i|
    q = Cell.new(i, q)
  end
  return q
end


a = Array.new(5) do |i| i + 1 end

p(nlist1(5))
p(nlist1rev(5))
p(nlist1_rec_l(a))
p(odddel(list_str))
p(concatcells(list_str, list_num))
p(reverse(list_str))
