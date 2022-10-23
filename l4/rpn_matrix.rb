# coding: utf-8
$matrices = []
$matrices_before = []

def e(a, b, c, d)
  $matrices.push([[a, b], [c, d]])
  return $matrices
end

def add
  y = $matrices.pop
  x = $matrices.pop
  a = x[0][0] + y[0][0]
  b = x[0][1] + y[0][1]
  c = x[1][0] + y[1][0]
  d = x[1][1] + y[1][1]
  $matrices.push([[a, b],[c, d]])
  return $matrices
end

def mul
  y = $matrices.pop
  x = $matrices.pop # [行][列]
  a = x[0][0] * y[0][0] + x[0][1] * y[1][0]
  b = x[0][0] * y[0][1] + x[0][1] * y[1][1]
  c = x[1][0] * y[0][0] + x[1][1] * y[1][0]
  d = x[1][0] * y[0][1] + x[1][1] * y[1][1]
  $matrices.push([[a, b],[c, d]])
  return $matrices
end

def show
  return $matrices
end
