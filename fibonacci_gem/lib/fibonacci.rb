class Fixnum
  def closest_fibonacci
    return self if self < 2

    # If we were trying to find the "actual" closest number,
    # we would use the inverse of Binet's formula to find the index:
    # phi = (1 + 5**0.5) / 2
    # index = ((Math.log(self * (5**0.5)) / Math.log(phi)).round)

    cur_in_fib_seq = 2

    number_0 = 0
    number_1 = 1

    while(number_0 <= self)
      number_0 = 0
      number_1 = 1

      for i in 2..cur_in_fib_seq
        new_number = number_0 + number_1
        number_1 = number_0
        number_0 = new_number
      end

      cur_in_fib_seq += 1
    end

    number_1
  end
end
