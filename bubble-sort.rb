# function bubble_sort takes one argument: numbers (array)
    # create loop count var (number = 0)
    # create stop until loop var (bool = false)
    # create swapped numbers var (bool = false)
    # loop until 'stop until loop' is true
        # loop through entire array - 2 - loop count
            # check if current element > next element
                # swap elements
                # set swapped numbers to true
        # if swapped numbers is true
            # increment loop count
            # set swapped numbers to false
        # else
            # set 'stop until loop' to true
    # return numbers

def bubble_sort(numbers)
    loop_count = 0
    stop_until_loop = false

    until stop_until_loop
        swapped_numbers = false
        for i in 0..numbers.length - 2 - loop_count do
            if numbers[i] > numbers[i + 1]
                large_num_temp = numbers[i]
                numbers[i] = numbers[i + 1]
                numbers[i + 1] = large_num_temp
                swapped_numbers = true
            end
        end
        if swapped_numbers
            loop_count += 1
        else
            stop_until_loop = true
        end
    end

    numbers
end

sorted_numbers = bubble_sort([4,3,78,2,0,2])
p sorted_numbers