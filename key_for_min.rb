# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  current_minimum_val = nil 
  current_key_assoc_w_min_val = nil 
  #the starting value and key assignment is nil
  #because we haven't gone through the hash yet
  name_hash.each do |key, value|
  #now we're starting to iterate through the hash
  #and if the current_min_val is nil, we've just
  #started iterating. So then we make the 
  #current_min_val equal to value (the val itera-
  #tion we're on, and take the assoc'd key)
    if current_minimum_val == nil 
      current_minimum_val = value 
      current_key_assoc_w_min_val = key 
    else 
     
      if current_minimum_val > value 
        current_minimum_val = value
        current_key_assoc_w_min_val = key 
      end
    end
  end 
  current_key_assoc_w_min_val 
end