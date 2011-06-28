# Given an array of n elements
# with 1 duplicate entry
# write a function that
# returns the duplicate array entry

array = []
100.times { |n| array << (n + 1) }

array << 23
h = {}
puts array.detect{ |e| h[e].tap{ h[e] = true } } # => 23
