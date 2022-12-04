class Memory
  def initialize(content)
    @content = content
  end

  def put(content)
    @content = content

    return "memorized " + @content.to_s
  end

  def get()
    return @content
  end
end

class Memory2
  def initialize()
    @stack = []
  end
  def put(content)
    @stack.push(content)
  end
  def get()
    @stack.pop()
  end
  def show()
    p(@stack)
  end
end
