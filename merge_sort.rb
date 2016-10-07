require 'pry'

class MergeSort

    def split(array)
        i = array.length
        first  = array[0...(i/2)]
        second = array[(i/2)..-1]
        binding.pry
        until first.length == 1
            split(first)
        end
        binding.pry
    end
    
    def sort(unsorted)
        sorted = []
        split(unsorted)
        first_split.map do |to_be_sorted|
            if to_be_sorted > second_split[0]
                to_be_sorted.push(sorted)
            else 
                second_split[0].push(sorted)
            end
            first_split.sort until first_split.length == 0
        end
        sorted
    end

end

sorter = MergeSort.new
sorter.sort(["d", "b", "a", "c"])