def divisible_digits(num)
  count = 0
  digits_array = num.to_s.split(//)
  digits_array.delete("0")
  digits_array.each do |digit|
    if (num)%(digit.to_i) == 0
      count += 1
    end
  end
  count
end

# Given an integer, N, traverse its digits (d1,d2,...,dn) and determine how many digits evenly divide N (i.e.: count the number of times N divided by each digit di has a remainder of 0). Return the number of evenly divisible digits.

# Note: Each digit is considered to be unique, so each occurrence of the same evenly divisible digit should be counted (i.e.: for N=111, the answer is 3).


