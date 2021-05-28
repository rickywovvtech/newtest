# class Test 
#   def initialize
#    puts "I love India"
#   end
# end

# # initialize object
# Test.new



# node = gets.chomp()
# arr = []
# arr1 = []
# arr << node
# arr1 << gets.chomp()
# arr1 << gets.chomp()
# aa = (arr[0][0]).to_i
# storage = []
# storage << (1..aa).to_a
# storage = storage.flatten
# ans = storage[(arr1[0][0]).to_i] + storage[(arr1[0][2]).to_i] 
# ans2 = storage[(arr1[1][0]).to_i] + storage[(arr1[1][2]).to_i] 
# storage[((arr1[0][0]).to_i + (arr1[0][2]).to_i)] = ans
# storage1 = []
# storage1 << storage
# storage1 = storage1.flatten
#  storage1.delete_at (arr1[0][0]).to_i
#  count =storage1.select {|e| e <= 4}.size 
# puts "So, answer is #{storage},#{storage1},#{storage[1]} So, aaaa #{count} "


n,m = gets.chomp.split(" ")
    n = n.to_i
    m = m.to_i

    weights = []
    for i in 0..m-1
         weights << gets.chomp.split(" ")
    end
    puts "So, answer is #{weights}, So, m is #{m}"