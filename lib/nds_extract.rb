require 'directors_database'

def directors_totals(nds)
#this take the director and the gross_for_director to make a hash
gross_totals = {}
counter = 0 
while counter < nds.length do 
  gross_totals[nds[counter][:name]] = gross_for_director(nds[counter])
  counter += 1 
end 
gross_totals
end
    

def gross_for_director(director_data)
worldwide_gross_total = 0 
counter = 0 
  while counter < director_data[:movies].length do 
    worldwide_gross_total += director_data[:movies][counter][:worldwide_gross]
    counter += 1 
  end 
  worldwide_gross_total #this makes thhe totals for each director
end