# Write your code here.
require "pry"

katz_deli = %w[Tobe Nwigwe Paul Wall]

def line (place_in_line)
    #shows everyone their current place in line. "The line is currently empty" if 0
    number_in_line = place_in_line.length

    if number_in_line > 0
# create arr 1. ___ 2. ___ 3. ___ join that to string.
        
        pp_in_line = place_in_line.map.with_index(1) do |name, i|
# push name and index to an arr
            "#{i}. #{name}"
        end
            puts place_in_line = "The line is currently: #{pp_in_line.join(" ")}"
    else
        puts place_in_line = "The line is currently empty."
    end
end

def take_a_number (current_line_arr, name_last_person_in_line)
    #New customer uses when entering deli
    #'puts' person name and position in line
    current_line_arr << name_last_person_in_line
    
    puts "Welcome, #{name_last_person_in_line}. You are number #{current_line_arr.length} in line."
end

def now_serving(arr)
    #'puts' next person in line and remove them from front. "There is nobody waiting to be served!"
    if arr.empty?
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{arr.shift()}."
    end 
end

# take_a_number(katz_deli, "Ada") #=> Welcome, Ada. You are number 1 in line.
# take_a_number(katz_deli, "Grace") #=> Welcome, Grace. You are number 2 in line.
# take_a_number(katz_deli, "Kent") #=> Welcome, Kent. You are number 3 in line.

# line(katz_deli) #=> "The line is currently: 1. Ada 2. Grace 3. Kent"

# now_serving(katz_deli) #=> "Currently serving Ada."

# line(katz_deli) #=> "The line is currently: 1. Grace 2. Kent"

# take_a_number(katz_deli, "Matz") #=> Welcome, Matz. You are number 3 in line.

# line(katz_deli) #=> "The line is currently: 1. Grace 2. Kent 3. Matz"

# now_serving(katz_deli) #=> "Currently serving Grace."

# line(katz_deli) #=> "The line is currently: 1. Kent 2. Matz" 

# binding.pry
