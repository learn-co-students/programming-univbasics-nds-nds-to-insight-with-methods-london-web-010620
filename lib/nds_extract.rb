$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)

director_total = 0 
  movies = directors_database[0][:movies]
  movies.length.times do |index|
   director_total += movies[index][:worldwide_gross]
  end
  
return director_total

end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

# This is the main body of the code from the vm example

#grand_total = 0
#row_index = 0
#while row_index < vm.length do
#  column_index = 0
#  while column_index < vm[row_index].length do
#    grand_total += total_value_of_spinner(vm, row_index, column_index)
#    column_index += 1
#  end
#  row_index += 1
#end

#p grand_total

# This is the main body I need to write

def directors_totals(nds)
  result = {}
  nil
end

# This is the code from the previous exercise but not clean... I need to make it clean 

def directors_totals(nds)
  
  nil
  
  result = {
  }
  
  directors_database.length.times do |director_index|
  
    name = directors_database[director_index][:name]
  
    total = 0 
  
    movies = directors_database[director_index][:movies]
    movies.length.times do |index|
    total += movies[index][:worldwide_gross]
    end
    result[name] = total
  
  end 
  
  return result 

end 
