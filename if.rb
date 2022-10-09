def num_isplus(a)
  if a > 0
    puts("Yes")
  elsif a == 0
    puts("its zero")
  elsif a < 0
    puts("No")
  end
end

num_isplus(gets.to_i)
