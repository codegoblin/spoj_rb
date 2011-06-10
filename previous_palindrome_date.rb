# Suppose we write dates in the MMDDYYYY format.
# In this format, the 2nd of October 2001 is a palindrome (a string equal to its reverse): 10022001.
# Find the previous date that yields a palindrome in this format.

# Given that there can only be one palindromic date / year,

require 'date'

# Definition:
class Date
  def print_previous_palindrome_date
    days_in_months = [31,28,31,30,31,30,31,31,30,31,30,31]
    current_year = self.year - 1

    begin
      # This adjusts for leap years:
      (((current_year % 400) == 0) || ((current_year % 100 != 0) && (current_year % 4 == 0))) ? days_in_months[1] = 29 : days_in_months[1] = 28

      yy = current_year.to_s
      mm = yy[3] + yy[2]
      dd = yy[1] + yy[0]
      m = mm.to_i
      d = dd.to_i
      current_year -= 1
    end until ( m > 0 && m <= 12 && d > 0 && d <= days_in_months[m-1] )

    puts mm + dd + yy
  end
end

# Use:
Date.civil(2001, 10, 2).print_previous_palindrome_date # => 08311380
