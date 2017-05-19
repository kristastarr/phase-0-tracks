
def complimenter
    puts "Good morning, sunshine!"
    yield("hair", "eyes")
    puts "Have an awesome day!"
    
end

complimenter { |x , y| puts "You have beautiful #{x} and #{y}!" }
