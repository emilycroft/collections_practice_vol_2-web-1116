require 'pry'

def begins_with_r(array)
  if array.all? do |x|
      x.start_with?("r")
      end
      return true
  else
    return false
  end

end

def contain_a(array)
  new_array = []
  array.each do |x|
    if x.include?("a")
      new_array << x
    end
  end
  new_array
end

def first_wa(array)
  array.find do |x|
    x.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  new_array = []
  array.each do |x|
    if x.class == String
      new_array << x
    end
  end
  new_array
end

def count_elements(array)
  new_array = []
  array.each do |hash|
    name = false
    i = 0
    while i < new_array.length
      if new_array[i][:name] == hash[:name]
        name = true
        new_array[i][:count] += 1
        break
      end
      i += 1
    end
    unless name
      new_array << { :name => hash[:name], :count => 1 }
    end
  end
  new_array
end

=begin
def merge_data(argu, argu2)
  new_array = []
  new_array << argu
  new_array << argu2

  new_array.flatten!

  new_array
end
=end

=begin
def merge_data(argu, argu2)
  new_array =[]

  argu.each do |element|
    element.each do |key, value|
      if key == :first_name && value == "blake"
        new_array << argu
      end
    end
  end

  argu2.each do |element|
    element.each do |key, value|
      if key == :first_name && value == "ashley"
        new_array << argu2
      end
    end
  end
  new_array
end

=end


def merge_data(argu, argu2)
  names = argu[0]
  names2 = argu[1]

  argu2.each do |nested_hash|
    nested_hash.each do |name, hash|
      hash.each do |key, value|
        if name == "blake"
          names[key] = value
        elsif name == "ashley"
          names2[key] = value
        end
      end
    end
  end

  new_array = []
  new_array << names
  new_array << names2
  new_array
end



def find_cool(argu)
  new_array = []
  argu.each do |hash|
    hash.each do |key, value|
      if key == :temperature && hash[key] == "cool"
        new_array << hash
      end
    end
  end
  new_array
end

def organize_schools(argu)
  schools = Hash.new
  argu.each do |school_key, location_hash|
    location_hash.each do |designation, location|
      if schools[location] == nil
        schools[location] = []
        schools[location] << school_key
      else
        schools[location] << school_key
      end
    end
  end
  schools
end
