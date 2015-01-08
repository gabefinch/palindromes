class String
  define_method(:palindromes) do

    split = self.downcase().split("")
    forward = self.downcase().split("")
    length = split.length()
    reverse = []
      length.times() do
        char = split.shift()
        reverse.unshift(char)
      end

    if forward == reverse
      true
    else
      false
    end
  end
end

# counter = 1
# until counter.==(3)
#   puts "Hello"
#   counter = counter.+(1)
# end
