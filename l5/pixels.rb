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
    puts("#{x}, #{y}, yes")
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


writeRect(250, 20, 50, 0, 0, 0, $img[0].length, $img.length)
writeimage(file_path)


#def writeLine(x, y, a, b, r, g, b, width, height)
#  (a * x).step() do |i|
