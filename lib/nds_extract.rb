require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

pp directors_database

#director_totals = nds[row_index][:movies][column_index][:worldwide_gross]

def directors_totals(nds)
  totals = {} 
  row_index = 0 
  
  while row_index < nds.length do
    totals[nds[row_index][:name]] = gross_for_director(nds[row_index])
    row_index += 1 
  end
  totals
end 


# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input


def gross_for_director(director_data)
  gross_totals = 0
  row_index = 0 
  
  while row_index < director_data[:movies].length do
    gross_totals += director_data[:movies][row_index][:worldwide_gross]
    row_index += 1
  end
  gross_totals
end
