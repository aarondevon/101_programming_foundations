=begin
Alan wrote the following method, which was intended to show all of the
factors of the input number:

def factors(number)
  dividend = number
  divisors = []
  begin
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end until dividend == 0
  divisors
end

Alyssa noticed that this will fail if the input is 0, or a negative number,
and asked Alan to change the loop. How can you change the loop construct
(instead of using begin/end/until) to make this work? Note that we're not
looking to find the factors for 0 or negative numbers, but we just want to
handle it gracefully instead of raising an exception or going into an infinite
loop.
=end

def factors(number)
  dividend = number
  divisors = []
  while dividend > 0
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors
end

=begin
Bonus 1
What is the purpose of the number % dividend == 0 ?
  The purpose is to see if number is equally divisible by dividend.
  The modulus operator returns the remainder, therefore if 0 is returned we know
  that the the number was equally divisible by the dividend

Bonus 2
What is the purpose of the second-to-last line in the method (the divisors
before the method's end)?
  While the loop was running it was adding each dividend that did not return a
  remainder to the array divisors. By placing the array at the end of the method
  the array will be returned. This means that we will be given all of the factors
  of the given number.
=end
