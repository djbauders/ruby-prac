class Dog
  attr_reader :name, :age, :weight
  def initialize(name, age, weight)
    @name = name
    @age = age
    @weight = weight
    @hungry = true
    @meals = 0
  end

  def hungry
    if @meals < 3
      @hungry = true
    else @meals >= 3
      @hungry = false
    end
  end

  def eat
    @meals += 1
  end

end
