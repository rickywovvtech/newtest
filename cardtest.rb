no_test = gets.chomp()
input = gets.chomp()
no_of_node = input[0].to_i
no_of_edge = input[2].to_i
edge = []
for e in 1..no_of_edge do
    edge << gets.chomp()
end
no_of_guest = gets.chomp()
guestNode = gets.chomp()
wait = 0
guest = 0
wait1 = 0
guest1 = 0
ed1 = 0
ed2 = 0
arr = []
arr1 = []
guest_fist = []
wait_first = []
guest_arr = []
wait_arr = []
  edge.each do |ed|
    flag = 0
    edge.each do |e|
        if e[0].to_i ==ed[0].to_i
            flag = flag +1
            if flag == 2
                arr << e
            end
        end
    end
    arr = arr.uniq
    if arr.length > 0
    #   arr.each do |ar|
    #   if ed[0].to_i==ar[0].to_i && ed[2].to_i ==ar[2].to_i
    #    if arr.include?(ed)
        # index = (arr.index(ed)).to_i
        # arr.each do |ar|
        if arr.include?(ed) && ed[0].to_i == ed2 && ed[0].to_i==arr[(arr.index(ed)).to_i][0].to_i && ed[2].to_i ==arr[(arr.index(ed)).to_i][2].to_i
        wait = wait + ed[4].to_i
        # wait_arr << wait
        # guest = guest + 1
        # guest_arr << guest
        if ed1 = ed[0].to_i==2 || ed2 = ed[2].to_i ==3
            guest = 1
        end
        ed1 = ed[0].to_i
        ed2 = ed[2].to_i
        # arr.delete_at (arr.index(ed)).to_i
    #   end
    #   end
    elsif ed[0].to_i == ed2 #&& ed[2].to_i == ed2
        wait = wait + ed[4].to_i
        if ed1 = ed[0].to_i==2 || ed2 = ed[2].to_i ==3
            guest = 1
        end
        ed1 = ed[0].to_i
        ed2 = ed[2].to_i
    elsif ed2 == 0
        wait = wait + ed[4].to_i
        if ed1 = ed[0].to_i==2 || ed2 = ed[2].to_i ==3
            guest = 1
        end
        ed1 = ed[0].to_i
        ed2 = ed[2].to_i
    end
  end
    wait_arr << wait
    guest_arr << guest
    if ed2 == 5
        sum = 0
        wait_arr.each do |s|
            sum = sum + s 
        end
        arr1 << sum
    end
    wait = 0
    guest = 0
end    

puts "So, edge is #{edge},wait #{wait_arr}, So, guest is #{guest_arr},So, output is #{arr1} "