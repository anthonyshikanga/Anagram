 class Array
   define_method(:anagram)do |base_word|
     matches=[]

   base_array = base_word.split(//).sort()

   self.each() do |current_word|

   test_array= current_word.split(//).sort()

   dup_base = base_array.dup  #Duplicates base_array
   is_match = false # used for testing partial matches

   if test_array.eql?(base_array)
     matches.push(current_word)

   else #determine if partial match
     test_array.each() do |current_letter|

        if dup_base.include?(current_letter)
          is_match = true
    
        dup_base.delete_at(dup_base.index(current_letter))

       else 
          is_match= false
         break 
       end

     end

       if is_match
          matches.push(current_word)
       end
     end

   end

   matches

  end
end

