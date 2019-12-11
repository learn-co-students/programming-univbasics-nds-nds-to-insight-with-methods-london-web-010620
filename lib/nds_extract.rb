require 'directors_database'

def directors_totals(nds)
  gross_totals = {}
  director_index = 0

  while director_index < nds.length do
    director = nds[director_index]
    gross_totals[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  gross_totals
end
    

def gross_for_director(director_data)
  grand_total = 0 
  counter = 0 
  while counter < director_data[:movies].length do 
    grand_total += director_data[:movies][counter][:worldwide_gross]
    counter += 1 
  end
  grand_total
end

