# node_and_edges = gets.chomp()
node_and_edges = gets.chomp.split(" ")
no_edges = node_and_edges[-1].to_i
edges_array = []
for e in 1..no_edges do
    # edges_array << gets.chomp()
    edges_array << gets.chomp().split(" ")
end
no_storage = gets.chomp()
storagei = []
for i in 1..no_storage.to_i do
    storagei << gets.chomp()
end
threshold = gets.chomp()
ans = 0
count = []
new_storage = []
storagei = storagei.flatten
edges_array.each do |edges|
    # ans = storagei[edges[0].to_i + edges[2].to_i ]
    # if edges[0].to_i + edges[2].to_i ==1
    #     if edges[0].to_i == 0
    #         storagei[edges[0].to_i] =0
    #     elsif edges[0].to_i == 1
    #         storagei[edges[0].to_i] =0
    #     end

    #     if edges[2].to_i == 0
    #         storagei[edges[0].to_i + edges[2].to_i ] = ans
    #     elsif edges[2].to_i == 1
    #         storagei[edges[0].to_i + edges[2].to_i ] = ans
    #     end
    # elsif edges[0].to_i + edges[2].to_i > 1
    #     storagei[edges[0].to_i + edges[2].to_i ] = ans
    #     if edges[0].to_i > 0
    #        storagei[edges[0].to_i] =0
    #     end
    #     if edges[2].to_i > 0
    #         storagei[edges[2].to_i] =0
    #      end
    # end

    ans = storagei[edges[0].to_i + edges[1].to_i ]
    if edges[0].to_i + edges[1].to_i ==1
        if edges[0].to_i == 0
            storagei[edges[0].to_i] =0
        elsif edges[0].to_i == 1
            storagei[edges[0].to_i] =0
        end

        if edges[1].to_i == 0
            storagei[edges[0].to_i + edges[1].to_i ] = ans
        elsif edges[1].to_i == 1
            storagei[edges[0].to_i + edges[1].to_i ] = ans
        end
    elsif edges[0].to_i + edges[1].to_i > 1
        storagei[edges[0].to_i + edges[1].to_i ] = ans
        if edges[0].to_i > 0
           storagei[edges[0].to_i] =0
        end
        if edges[1].to_i > 0
            storagei[edges[1].to_i] =0
         end
    end

    storagei.each do |st|
        if st.to_i > 0
          new_storage << st
        end
    end
    c = 0
  new_storage.each do |nst|
    if nst.to_i <= threshold.to_i 
        c = c + 1
    end
  end  
  count << c
  new_storage.clear
end
 puts(count) 




