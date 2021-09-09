require "rspec"
require "./lib/dog"

RSpec.describe Dog do
  it "exists with attributes" do
    dog = Dog.new("Max", 3, 50)

    expect(dog).to be_a(Dog)
    expect(dog.name).to eq("Max")
    expect(dog.age).to eq(3)
    expect(dog.weight).to eq(50)

  end
  it "is born hungry" do
    dog = Dog.new("Sam", 4, 25)

    expect(dog.hungry).to be(true)
  end
  it "is no longer hungry when it eats 3 meals" do
    dog = Dog.new("Sam", 4, 25)

    dog.eat
    expect(dog.hungry).to be(true)
    dog.eat
    dog.eat
    expect(dog.hungry).to be(false)
  end
end
