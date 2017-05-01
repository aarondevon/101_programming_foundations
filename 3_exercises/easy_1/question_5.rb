# Programmatically determine if 42 lies between 10 and 100.
(10..100).cover?(42)

=begin
Originally I thought to use include?, however, inlcude? will only let me
know if the number is included in the range. What I want to know is if the
number is between the starting and ending number. cover? is the better method
for the problem.
=end
