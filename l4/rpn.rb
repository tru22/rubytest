$val = []
$val_before = []
$operations = []

def e(x)
  $val.push(x)
  return $val
end

def save()
  $val_before = $val.dup
end

def add
  save()
  y = $val.pop
  x = $val.pop
  $val.push(x + y)
  $operations.push("add")
  return $val
end

def mul
  save()
  y = $val.pop
  x = $val.pop
  $val.push(x * y)
  $operations.push("mul")
  return $val
end

def sub
  save()
  y = $val.pop
  x = $val.pop
  $val.push(x - y)
  $operations.push("sub")
  return $val
end

def div
  save()
  y = $val.pop
  x = $val.pop
  $val.push(x.to_f / y)
  $operations.push("div")
  return $val
end

def inv
  save()
  x = $val.pop
  x = -x
  $val.push(x)
  $operations.push("inv")
  return $val
end

def exch
  save()
  y = $val.pop
  x = $val.pop
  $val.push(y)
  $val.push(x)
  $operations.push("exch")
  return $val
end

def clear
  $val = []
  $operations = []
end

def cancel
  $val = $val_before.dup
  $operations.pop()
end

def show
  return $operations
end
