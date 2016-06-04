def begins_with_r(array)
  i = 0
  array.each do |x|
    if x[0] != "r"
      return false
    end
    i += 1
  end
  return true
end

def contain_a(array)
  #returns alll elements that contain letter a
  array.select do |x|
    x.include?("a")
  end
end

def first_wa(array)
  #returns first element that begins with letter wa
  array.find do |x|
    x[0..1] == "wa"
  end
end

def remove_non_strings(array)
  array.delete_if do |x|
    x.class != String
  end
end

def count_elements(array) #got solution from online
  #turn into a hash
  new_array = array.uniq
    new_array.collect do |x|
      x[:count] = array.count(x)
      x
    end
  end
 
def merge_data(keys,attributes) #looked up merge
  #keys.merge(attributes)
  keys.collect do |x|
    x.merge(attributes[0] [x[:first_name]])
  end
end


def find_cool(array)
  i = 0
  cool_array = []
  array.each do |x|
    if x[:temperature] == "cool"
      cool_array << x
    end
    i += 1
  end
  return cool_array
  end



def organize_schools(hash) #easier with hashes GOT HELP ONLINE
  new_hash = {}
  hash.each do |school, location_hash|
    location_hash.each do |key, value|
      if new_hash.keys.include?(value) == false
        new_hash[value] = []
        new_hash[value] << school
      else
        new_hash[value] << school
      end
    end
  end
  new_hash
          
end
