def get_binary(num) #takes in an integer returns 16 bit binary
  binary = num.to_s(2)
  until binary.length >= 16
    binary.prepend("0")
  end
  binary
end

def get_xor(bin1, bin2) #takes in two binary numbers of equal length
  xor = ""
  for i in (0..(bin1.length-1))
    if bin1[i] == "1" && bin2[i] == "1"
      xor << "0"
    elsif bin1[i] == "1" || bin2[i] == "1"
      xor << "1"
    else
      xor << "0"
    end
  end
  xor
end

def maxxor(l,r)
  xor_array = []
  for first in (l..r)
    first_bin = get_binary(first)
    for second in (first..r)
      xor = ""
      second_bin = get_binary(second)
      xor = get_xor(first_bin, second_bin)
      xor_array << xor.to_i(2)
    end
  end
  xor_array.max
end

