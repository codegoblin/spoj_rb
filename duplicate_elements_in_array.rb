# ** BEGIN RAGE **
# Hey rubyists! Have you ever had a stupid CS question asked of you during an interview,
# well here's the solution to a common one ~>
# ** END RAGE **

# Given an array of n elements
# with 1 duplicate entry
# write a function that returns that array entry

array = []
100.times { |n| array << (n + 1) }

array << 23
h = {}
puts array.detect{ |e| h[e] || ( ( h[e] = true ) && false ) } # should be 23
