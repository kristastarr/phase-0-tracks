#build a method that takes an array and an integer

for each loop
    is the integer in the array
        then print the index of the integer
    if not,
        print nil
        

def search_array (arr, n)
    arr.each {
        if arr.include? n
            p arr.rindex(n)
        end
end


# return integer
