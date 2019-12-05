require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  #create a new hash 
  result = {}
  
  #for each index on the nds add a new key with the director's name 
  #and add the earnings as values, using the first-order method 
  nds.length.times do |director_index|
    result[nds[director_index][:name]] = gross_for_director(nds[director_index])
  end
  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  total_earnings = 0
  director_data[:movies].length.times do |movies_index|
    total_earnings += director_data[:movies][movies_index][:worldwide_gross]
  end
  total_earnings
end
