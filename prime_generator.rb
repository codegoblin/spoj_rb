# Prime Generator
# Your task is to generate all prime numbers between two given numbers!

# Input
# The input begins with the number t of test cases in a single line (t<=10). In each of the next t lines there are two numbers m and n (1 <= m <= n <= 1000000000, n-m<=100000) separated by a space.

# Output
# For every test case print all prime numbers p such that m <= p <= n, one number per line, test cases separated by an empty line.

# Example
# Input:
# 2
# 1 10
# 3 5
# Output:
# 2
# 3
# 5
# 7

# 3
# 5

def prime?(n)

end

test_cases = gets.chomp

test_cases.to_i.times do |tc|
  captures = gets.match %r|^(\d+) (\d+)$|
  range = Range.new(captures[1], captures[2])

  for i in range
    puts i if prime?(i)
  end
  puts "\n"
end


