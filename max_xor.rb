
def get_binary(num) #takes in an integer returns 32 bit binary
  binary = a.to_s(2)
  until binary.length == 32
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
  for a in (l..r)
    abinary = get_binary(a)
    puts "a: #{a}"
    puts "abinary: #{abinary}"
    for b in (l..r)
      xor = ""
      bbinary = get_binary(b)
      puts "b: #{b}"
      puts "bbinary: #{bbinary}"
      get_xor(abinary, bbinary)
      xor_array << xor
    end
  end
  puts "xor array: #{xor_array}"
  puts "max xor: #{xor_array.max}"
end

a = 10
b = 15
maxxor(a,b)

puts " "
puts "@~"*10
puts " "
c = 1
d = 10
maxxor(c,d)
