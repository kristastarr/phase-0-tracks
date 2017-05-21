# Implement a Simple Search:
# build a method that takes an array and an integer
# return an integer

# for each loop
# determine is the integer in the array?
#if yes, then print the index of the integer
# if not, print nil

def search_array (arr, n)
    arr.each {
        if arr.include? n
            p arr.rindex(n)
        end
        end
        
        #Calculate Fibonacci Numbers
        
        def fib(n)
        fib_sequence = [0,1]
        x = 2
        while x < n
            fib_sequence<< fib_sequence[-1] + fib_sequence[-2]
            x += 1
        end
        p fib_sequence
        end
        
        #fib(6)
        #fib(100)
        
        
        #Sort an Array
        
        def bubble_sort(array)
        n = array.length
        loop do
            swapped = false
            
            (n-1).times do |i|
                if array[i] > array[i+1]
                    array[i], array[i+1] = array[i+1], array[i]
                    swapped = true
                    p array
                end
            end
            
            break if not swapped
        end
        
        array
        end
        
        my_array = [4, 3, 6, 8, 2, 0, 4, 7]
        
        bubble_sort(my_array)
        
        # How to bubble sort:
        # Input: an array of integers in random order
        # Output: an array of integers in order from least to greatest value
        
        # Take an array of numbers
        # Start with the first number (at index 0) and compare it to the second number (at index 1)
        # Continue comparing from left to right until a number is found that is greater than the one after it in the array
        # Swap the two numbers so that the number with the lower value is moved to the lower index
        # Start over at the beginning of the index and run through the same process again until all of the numbers have been sorted from least to greatest
        
