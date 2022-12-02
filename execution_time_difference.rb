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


def largest_contiguous_subsum(list) #O(n^2)
    subs = []
    (0...list.length).each do |start|
        (start...list.length).each do |ending|
            subs << list[start..ending]
        end
    end
    subs.map { |sub| sub.sum}.max
end

list = [5, 3, -7]
p largest_contiguous_subsum(list) # => 8