node = gets.chomp()
arr = []
arr1 = []
arr << node
edge = (arr[0][2]).to_i
for e in 1..edge do
  arr1 << gets.chomp()
end
no_conn = gets.chomp()
aa = (arr[0][0]).to_i
storage = []
storage1 = []
count = []
ans = 0
# storage << (1..aa).to_a
for s in 1..aa do
    storage << gets.chomp()
end
threshold = gets.chomp()
storage = storage.flatten
arr1.each do |ab|
    ans = storage[(ab[0]).to_i].to_i + storage[(ab[2]).to_i].to_i
    if ((ab[0]).to_i + (ab[2]).to_i) == 1
        if ((ab[0]).to_i)==1
          storage[((ab[0]).to_i)] = 0
        elsif ((ab[0]).to_i)==0
            storage[((ab[0]).to_i)] = 0 
        end
        if ((ab[2]).to_i)==1
              storage[((ab[0]).to_i + (ab[2]).to_i)] = ans
          elsif ((ab[2]).to_i)==0
              storage[((ab[0]).to_i + (ab[2]).to_i)] = ans 
        end
    elsif ((ab[0]).to_i + (ab[2]).to_i) > 1
        storage[((ab[0]).to_i + (ab[2]).to_i)] = ans
        if ((ab[0]).to_i) > 0
            storage[((ab[0]).to_i)] = 0
          end
          if ((ab[2]).to_i) > 0
                storage[((ab[2]).to_i)] = 0
          end
    end
    storage.each do |st|
        if st.to_i > 0
          storage1 << st
        end
    end
    storage1 = storage1
    # storage1.delete_at (ab[0]).to_i
    count << storage1.select {|e| e.to_i <= threshold.to_i}.size 
    storage1.clear
end
puts "So, answer is #{storage},#{storage1}, So, output is #{count} "