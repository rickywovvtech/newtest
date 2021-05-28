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
# for e in 1..no_of_edge do
  edge.each do |ed|
    if ed[2].to_i == guestNode[4].to_i && ed[2].to_i == no_of_node
        wait1 = wait1 + ed[4].to_i
        wait_first << wait1
        puts "So, edge is #{wait}" 
        guest1 = guest1 + 1
        guest_fist << guest1
        puts "So, guest is #{guest1}"
        ed1 = ed[0].to_i
        ed2 = ed[2].to_i
    elsif ed[0].to_i == ed2
        wait = wait + ed[4].to_i
        wait_arr << wait
        guest = guest + 1
        puts "So, guest array #{guest}"
        guest_arr << guest
        ed1 = ed[0].to_i
        ed2 = ed[2].to_i
    # elsif ed[0].to_i != ed2 && ed[0].to_i == ed1
    #     wait = wait + ed[4].to_i
    #     wait_arr << wait
    #     guest = guest + 1
    #     puts "So, guest array #{guest}"
    #     guest_arr << guest
    #     ed1 = ed[0].to_i
    #     ed2 = ed[2].to_i
    elsif ed2 == 0
        wait = wait + ed[4].to_i
        wait_arr << wait
        guest = guest + 1
        puts "So, array #{guest}"
        guest_arr << guest
        ed1 = ed[0].to_i
        ed2 = ed[2].to_i
        puts "So, d2 is #{ed2}"
    end
#     edge.delete_at (edge.index(ed)).to_i
#   end 
#   arr << wait_arr.last
#   arr1 << guest_arr[-2]
#   wait_arr.clear
#   guest_arr.clear
end    

puts "So, edge is #{edge},wait #{wait_arr}, So, guest is #{guest_arr},So, output is #{wait_arr.last} "