Cell = Struct.new(:data, :next) # declaring class with upper cased
list_num = Cell.new(1, Cell.new(2, Cell.new(3, nil)))

=begin
p(list_num)
p(list_num.next)
p(list_num.next.next)
p(list_num.next.next.next)
=end

def inunuwan(no) # loads function and class in irb, but NEVER load arguments
  p(no)
end

list_str = Cell.new("A", Cell.new("B", Cell.new("C", nil)))
#list_num.next.next.next = list_str
#p(list_num)

=begin
list_str.next.next.next = list_num
list_num.next = list_str
p(list_str)
=end

=begin
list_str.next.next = nil
list_num.next = list_str
p(list_num)
=end

def listlen(p)
  if p == nil
    return 0
  else
    return listlen(p.next) + 1
  end
end

def listprint(p)
  if p != nil
    puts(p.data)
    listprint(p.next)
  end
end

def revlistprint(p) # cool to teach memory stack?
  if p != nil
    listprint(p.next)
    puts(p.data)
  end
end

def listsum(p)
  if p != nil
    return p.data + listsum(p.next)
  else
    return 0
  end
end

def listcat(p)
  if p != nil
    return p.data.to_s + listcat(p.next)
  else
    return ""
  end
end

def revlistcat(p)
  if p != nil
    return revlistcat(p.next) + p.data.to_s
  else
    return ""
  end
end

def manyprint(p)
  if p != nil
    2.times do |i|
      manyprint(p.next)
    end
    puts(p.data)
  end
end

def oddsumlist(p)
  i = 1
  sum = 0
  while p != nil do
    if i % 2 == 1
      sum += p.data
    end
    p = p.next
    i += 1
  end

  return sum
end

p(listlen(list_str))
p(listprint(list_str))
p(listsum(list_num))
p(listcat(list_num))
p(revlistcat(list_num))
p(manyprint(list_str))
p(oddsumlist(list_num))
