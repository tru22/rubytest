class Concat
  def initialize()
    @result = ""
  end
  
  def add(str)
    @result += str.to_s
  end

  def get()
    p(@result)
  end

  def reset()
    @result = ""
  end
end
