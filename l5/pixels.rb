Pixel = Struct.new(:r, :g, :b)
pixels = Pixel.new(255, 255, 255)
#p(pixels.r)


$img = Array.new(200) do
  Array.new(300) do Pixel.new(255, 255, 255) end
end

def pset(x, y, r, g, b, width, height)
  if 0 <= x and x < width and 0 <= y and y < height # starts from zero
    $img[y][x].r = r
    $img[y][x].g = g
    $img[y][x].b = b
    #puts("#{x}, #{y}, yes")
  end
end

file_path = "./pixel_test.ppm"
def writeimage(name)
  open(name, mode = "wb") do |f| # stdio?
    f.puts("P6\n#{$img[0].length} #{$img.length}\n255") # for PPM format
    $img.each do |a| # array.each is pretty useful
      a.each do |p| f.write(p.to_a.pack("ccc")) end # ccc is PPM format
    end
  end
end

=begin
pset($img[0].length / 2, $img.length / 2, 0, 0, 0, $img[0].length, $img.length)
writeimage(file_path)
=end

def writeRect(x, y, len, r, g, b, width, height)
  x.step(x + len) do |i|
    y.step(y + len) do |j|
      pset(i, j, r, g, b, width, height)
    end
  end
end

=begin
writeRect(250, 20, 50, 0, 0, 0, $img[0].length, $img.length)
writeimage(file_path)
=end

def writeLinear(m, c, r, g, b, width, height)
  0.step(width) do |i|
    j = m * i + c
    pset(i, j, r, g, b, width, height)
  end
end

=begin
writeLinear(0.3, 20, 0, 0, 0, $img[0].length, $img.length)
writeimage(file_path)
=end

def writeTriangle(x, y, tri_height, r, g, b, width, height)
  y.step(y + tri_height) do |i|
    for k in (x - (i - y))..(x + (i - y)) do
      pset(k, i, r, g, b, width, height)
    end
  end
end

=begin
writeTriangle(100, 30, 100, 0, 0, 0, $img[0].length, $img.length)
writeimage(file_path)
=end

def writeFillcircle(x0, y0, rad, r = 0, g = 0, b = 0, width = $img[0].length, height = $img.length)
  width.times do |y|
    height.times do |x|
      if (x - x0) ** 2 + (y - y0) ** 2 <= rad ** 2
        if block_given?
          yield x, y
        else
          pset(x, y, r, g, b, width, height)
        end
      end
    end
  end
end

def writePacman(x0, y0, rad, width, height)
  writeFillcircle(x0, y0, rad) do |x, y| # block_given?
    theta = Math.atan2(y - 120, x - 100) * 180 / Math::PI
    if theta > 15 or theta < - 15
      pset(x, y, 255, 0, 0, width, height)
    end
  end
end

writePacman(100, 120, 80, $img[0].length, $img.length)
writeimage(file_path)
