# global variable $x

# $x = Array.new()
$x = [0]
$return_idx = 0

def sum(v)
  $x.push($x[$return_idx] + v)
  $return_idx += 1  
  return $x[$return_idx]
end


def reset()
  $x.push(0)
  $return_idx += 1
  return $x[$return_idx]
end


def dec(v)
  $x.push($x[$return_idx] - v)
  $return_idx += 1  
  return $x[$return_idx]
end


def undo()
  if $return_idx == 0
    return "can't undo"
  else
    $return_idx -= 1
    return $x[$return_idx]
  end
end
