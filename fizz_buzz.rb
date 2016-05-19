# Dominic LaRouche       #
# 5/18/2016              #
# Ruby Fizz Buzz program #
##########################


# ARGV takes an array as input so we need to take the value of
# the first index of the array & store it in the variable n
n = ARGV.first.to_i

# declaring strings to be printed to terminal depending on case
f = "Fizz"
b = "Buzz"
error_msg = "Please provide a non negative integer greater than zero"

# Boolean method to compare the arguments to see if they are divisible
def divisible_by?(numerator, denominator)
  numerator % denominator == 0
end

#----------------------Single number tester------------------------------------#
# this method checks individual number arguments and returns
# 'Fizz', 'Buzz', 'FizzBuzz' or error msg. used for testing purposes
def fizz_buzz(num)
  if num.is_a?(Integer) == false || num < 0
    "Please provide a non negative integer greater than zero"
  elsif divisible_by?(num, 3) == true && divisible_by?(num, 5) == true
    "FizzBuzz"
  elsif divisible_by?(num, 3) == true
    "Fizz"
  elsif divisible_by?(num, 5) == true
    "Buzz"
  else
    num
  end
end

#--------------------------STDOUT printer--------------------------------------#
# loop iterates from 1 to n and prints out the results otherwise,
# string, float, and negative numbers will trigger the error msg
if n.is_a?(Integer) == true && n > 0
  1.upto(n) do |i|
    div_by3 = divisible_by?(i, 3)
    div_by5 = divisible_by?(i, 5)
    puts case
         when div_by3 && div_by5 then f + b
         when div_by3 then f
         when div_by5 then b
         else i
    end
  end
else
  puts error_msg
end
