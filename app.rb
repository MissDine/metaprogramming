# metaprogramming allows us to essentially write code that writes code or modifies code.
puts "Hello".reverse
# Send sneds a message
puts "Hello".send(:reverse)

arg = :reverse
puts "Hello".send(arg)

# gsub substitutes
puts "Hello".gsub("h","j")