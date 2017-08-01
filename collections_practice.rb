#begins_with_r - use all
def begins_with_r(array)
  array.all? {|name| name.start_with?("r")}
end

#contain_a - find_all to return elements and include
def contain_a(array)
  array.find_all {|element| element.include? "a"}
end

#first_wa
def first_wa(array)
  first_wa = []
  array.each do |element|
    if element.match(/wa/)
      first_wa = element
      break
    end
  end
  first_wa
end

#remove_non_strings
#.class determines if something is a string; x.is_a? String outputs true/false
def remove_non_strings(array)
  these_are_strings = []
  array.each do |element|
    if element.class == String
      these_are_strings << element
    end
  end
  these_are_strings
end

#count_elements
def count_elements(array)
  array.each_with_object(Hash.new(0)) { |g,h| h[g[:name]] += 1 }.
    map { |name, count| { :name=>name, :count=>count } }
end

#merge_data
def merge_data(keys, values)
  container = []
  keys.each do |person_name|
    name = person_name[:first_name]
    values.each do |person_data|
      if person_data[name]
        merged_person = person_data[name]
        merged_person[:first_name] = name
        container << merged_person
      end
    end
  end
  container
end

#find_cool

def find_cool(array)
  container = []
  array.each do |element|
    container << element if element[:temperature] == "cool"
  end
  container
end

#organize_schools

def organize_schools(schools)
  organized_schools = {}
  schools.each do |name, location_hash|
    location = location_hash[:location]
    if organized_schools[location]
      organized_schools[location] << name
    else
      organized_schools[location] = []
      organized_schools[location] << name
    end
  end
  organized_schools
end
