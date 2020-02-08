$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  total = 0
  coordinate = 0

  while coordinate < director_data[:movies].length do
    total += director_data[:movies][coordinate][:worldwide_gross]
    coordinate += 1
  end

  total
end
  
  
def directors_totals(nds)
  result = {}

  director_index = 0
  while director_index < nds.size do
    director = nds[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end
