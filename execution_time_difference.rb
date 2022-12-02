# # Phase 1

# def my_min(arr) # time complexity => O(n^2) quadratic
#     arr.each_with_index do |ele1, i|
#         smallest = true     #ele1 = 0

#         arr.each_with_index do |ele2, j|
#             next if i == j
#             if ele2 < ele1
#                 smallest = false
#             end
#         end

#         if smallest == true
#             return ele1
#         end
#     end
# end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ] 
# p my_min(list)  # =>  -5


# # Phase 2

# def my_min(arr) #O(n)
#     smallest = arr.first
#     arr.each do |ele|
#         if ele < smallest
#             smallest = ele
#         end
#     end
#     smallest
# end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ] 
# p my_min(list) 


#Phase1
# def largest_contiguous_subsum(list) #O(n^2)
#     subs = []
#     (0...list.length).each do |start|
#         (start...list.length).each do |ending|
#             subs << list[start..ending]
#         end
#     end
#     subs.map { |sub| sub.sum}.max
# end

# list = [5, 3, -7]
# p largest_contiguous_subsum(list) # => 8


#Phase 2
# require "byebug"
# debugger
def largest_contiguous_subsum(list) #O(n)time with O(1)memory
    largest_sum = false
    current_sum = false

    list.each do |ele|     
        if largest_sum == false
            current_sum = ele   
            largest_sum = ele      
        else 
            next_sum = current_sum + ele 
            if next_sum > largest_sum 
                largest_sum = next_sum  
                current_sum = next_sum  
            elsif next_sum < largest_sum && next_sum >= 0
                current_sum = next_sum
            elsif next_sum < 0
                current_sum = 0
            end
        end
    end
    largest_sum
end


list = [5, 3, -9, 5, 8]
p largest_contiguous_subsum(list) # => 13









# list = [2, 3, -6, 7, -6, 7]
# p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])