# metaprogramming allows us to essentially write code that writes code or modifies code.
puts "Hello".reverse
# Send sneds a message
puts "Hello".send(:reverse)

arg = :reverse
puts "Hello".send(arg)

# gsub substitutes
puts "Hello".gsub("h","j")
puts "Hello".send(:gsub,"h","j")

n = 2 + 5

puts 2 + 5
puts 2.send(:+, 7)

class Money
    attr_reader :value
    def initialize(value, unit)
        @value = value
        @unit = unit
    end  
    
    def to_s
        "#{@value}, #{@unit}"
    end  
    
    def +(other)
        Money.new(@value + other.value, @unit)
    end    
end    

object1 = Money.new(10, "USD")
object2 = Money.new(80, "USD")

puts object1 + object2

class Something
    def name=(name)
        puts "You have changed your name to #{name}"
    end    
end 

Something.new.name = "Enid"

# METHOD MIXING
class Anything
    def method_missing(method_name, *arg)
        puts "You called #{method_name}"
    end    
end 

Anything.new.pig_latin
Anything.new.name = "Nyatichi"


# Hash
class Hash
end

hash = Hash.new

hash.name = "Norbert"
hash.kid_count = 5

puts "#{hash.name} has #{hash.kid_count} kids"

hash.each do |key, value| 
    puts key
end    