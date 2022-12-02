# Phase 1

def my_min(arr) # time complexity => O(n^2) quadratic
    arr.each_with_index do |ele1, i|
        smallest = true     #ele1 = 0

        arr.each_with_index do |ele2, j|
            next if i == j
            if ele2 < ele1
                smallest = false
            end
        end

        if smallest == true
            return ele1
        end
    end
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ] 
p my_min(list)  # =>  -5


# Phase 2

def my_min(arr)
    
end
