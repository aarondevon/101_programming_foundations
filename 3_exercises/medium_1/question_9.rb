# Method calls can take expressions as arguments. Suppose we define a function
# called rps as follows, which follows the classic rules of rock-paper-scissors
# game, but with a slight twist that it declares whatever hand was used in the
# tie as the result of that tie.

def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end
# What is the result of the following call?

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

# Answer: "paper"
=begin
  in the fist1 position we have to method calls. The first call evaluates to
  "paper" and the second evaluates to rock.
  Therefore rps(rps(rps("rock", "paper"), rps("rock", "scissors")) = "paper"
  in the fist2 position we have "rock"
  Following the logic of the method we look to the elsif and see that fist2 is not scissors so the method will return "paper"
=end
