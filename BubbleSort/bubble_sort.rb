#bubble_sort.rb
#Script file for bubble_sort and bubble_sort_by methods

def bubble_sort(input_array)
    swap = true
    while swap
        swap = false
        input_array[0..-2].each_with_index do |e,i|
            if input_array[i] > input_array[i + 1]
                tmp = input_array[i]
                input_array[i] = input_array[i + 1]
                input_array[i + 1] = tmp
                swap = true 
            end
        end
    end
    return input_array         
end

def bubble_sort_by
end