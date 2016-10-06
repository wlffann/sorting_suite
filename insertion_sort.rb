class InsertionSort 
    def sort(unsorted)
        sorted = []
        until unsorted.length.eql?(0)
            test = unsorted.shift
            if  sorted == []
                sorted.push(test)
            else  
                sorted.each_with_index do |sorted_number, sorted_number_index|
                    if test > sorted_number
                        sorted.insert(sorted_number_index + 1, test)
                        break
                    else
                        sorted.insert(sorted_number_index, test)
                        break
                    end
                end
            end
        end
        puts sorted
    end
end

sorter = InsertionSort.new 
sorter.sort(["d", "b", "a", "c"])