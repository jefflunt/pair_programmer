$LOAD_PATH.unshift './lib'

##
# pair programmer - a program that writes programs for you
#
# Like algebras, pair programmer can be taught to recognize a series of
# patterns, and then apply techniques for transforming those patterns into novel
# solutions.
#
# Are you a mathemetician? Did you discover any of the great theorms or axioms
# of mathematics? No, you probably didn't. Does that stop you from being able to
# learn those ideas and apply them to problems in your own life? No, it doesn't.
# These are the core concepts of pair programmer.
#
# 1) Learn to identify problems through pattern matching.
# 2) Learn a set of techniques that can be applied to simplify those patterns,
#    to optimize them, etc.
# 3) Learn to formulate novel solutions to novel problems through pattern
#    matching the problem statement onto the set of available solutions.
#
# So we have three parts:
# - Describe a problem in a way that can be understood by the computer
# - Provide a set of pattern matchers that can allow the computer to map the
#   problem onto solution sets
# - Provide the solution sets and let the computer solve the problems
#
# Patterns - see the problem for what it is
# Solvers - find solutions to the problem
# Composers - compose the program code

require 'colorize'
require 'code/composer'
require 'code/solutions/arithmetic'

specs = Spec.read('arithmetic')
specs.each do |spec|
  puts spec
  puts
  puts spec.solve
  puts "---\n\n"
end
