# Consider these two simple methods:

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end
# What would be the output of this code:

bar(foo)

# Answer: "no"
# the method foo will always return "yes". "yes" does not equivalent to "no" so
# bar retruns "no"
