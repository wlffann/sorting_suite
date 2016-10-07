require 'pry'

class MergeSort

    def sort(array)
        i = array.length
        m = i / 2
        s = 0
        first  = array[s...m]
        second = array[m..i]
        # binding.pry
        until first.length == 1
            sort(first)
            sort(second)
        end
        merge(first, second)
        # binding.pry
    end

    def merge(first, second)
        sorted =[]
        until second[0] == nil || first[0] == nil
            if first[0] > second [0]
                sorted.push(second[0], first[0])
            else 
                sorted.push(first[0], second[0])
            end
            # first.pop
            # second.pop
        end    
        puts sorted.inspect
    end
 
end

sorter = MergeSort.new
sorter.sort(["d", "b", "a", "c"])