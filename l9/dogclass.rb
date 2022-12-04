class Dog
  def initialize(name)
    @name = name
    @speed = 0.0
    @bark_times = 3
  end
  def talk()
    p("my name is " + @name)
  end
  def addspeed(d)
    @speed = @speed + d
    p("speed = " + @speed.to_s)
  end
  def bark()
    @bark_times.times do |i|
      p("bow")
    end
  end
  def setcount(bark_times)
    @bark_times = bark_times
  end
end

a = Dog.new("inunuwan")
a.talk()
a.bark()
a.talk()
a.setcount(5)
a.bark()
