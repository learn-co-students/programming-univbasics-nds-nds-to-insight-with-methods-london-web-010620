require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }



def directors_totals(nds)
  result = {}
  row_index = 0
  total_director = 0
  while row_index < nds.count do 
    result[row_index] << directors_database[:name]
      while column_index < nds[row_index].count do 
      total_director += directors_database[:movies][row_index][:worldwide_grosses]
      end 
  result[row_index] << total_director
  row_index += 1
  end
  return result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  
end
