require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }



def directors_totals(nds)
  result = {}
  director_index = 0
  while director_index < nds.count do 
    current_director = nds[director_index][:name]
    result[current_director] = gross_for_director(nds[director_index])
    director_index += 1
      end 
 return result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_movies)
  counter = 0 
  total_gross = 0 
  movie = director_movies[:movies] 
    while counter < movie.count do 
      total_gross += movie[counter][:worldwide_gross]
      counter +=1
    end
    total_gross
end
