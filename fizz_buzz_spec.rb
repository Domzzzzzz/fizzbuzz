# Dominic LaRouche   #
# 5/18/2016          #
# Fizz Buzz Testing  #
######################

require 'rspec'
require_relative 'fizz_buzz'

describe '#fizz_buzz' do
  before(:each) do
    @error_msg = "Please provide a non negative integer greater than zero"
  end

  it "should return `Fizz` for number divisible by 3" do
    expect(fizz_buzz(3)).to eq("Fizz")
  end

  it "should return `Buzz` for number divisible by 5" do
    expect(fizz_buzz(5)).to eq("Buzz")
  end

  it "should return `FizzBuzz` for number divisible by 3 and 5" do
    expect(fizz_buzz(15)).to eq("FizzBuzz")
  end

  it "should return 11 since it isn't divisible by 3 or 5" do
    expect(fizz_buzz(11)).to eq(11)
  end

  it "should return error message because string was entered" do
    expect(fizz_buzz("hello")).to eq(@error_msg)
  end

  it "should return error message because a negative number was entered" do
    expect(fizz_buzz(-3)).to eq(@error_msg)
  end

  it "should return error message because a floating point number was entered" do
    expect(fizz_buzz(4.35)).to eq(@error_msg)
  end

end
