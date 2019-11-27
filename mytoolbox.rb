module MyToolbox
    
    module InstanceMethods
        def split_this_thing_here_and_now(string_to_split,delimiters_array)
            #Splits a string according to the delimiters array provided. It does it in 2 steps to demonstrate details
            #Params:   string_to_split: String to be splitted
            #          delimiters_array: Array of delimiters provided as string/s in an array 
            #Output:    array of splitted words
            
            #Step-1: Split according to the uniopn of the provided allow. Make use of Ruby's own Regexp as well
            splitted_word = string_to_split.split(Regexp.union(delimiters_array))
            #Step-2: Remove the empty entries. It is the trade of when we are after a generic code :)
            #        Calling instance receives the array of splitted words!
            splitted_word = splitted_word.reject{|each_entry_in_array|each_entry_in_array.empty?}        
        end
    end

end