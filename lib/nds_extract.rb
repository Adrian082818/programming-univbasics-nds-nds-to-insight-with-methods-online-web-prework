require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  row_index = 0 
  while row_index < nds.length do 
    directors_name = nds[row_index][:name]
    column_index = 0 
    result[directors_name] = 0 
    movies = nds[row_index][:movies]
    while column_index < movies.length do 
      directors_gross = movies[column_index][:worldwide_gross]
      result[directors_name] += directors_gross
      column_index += 1 
  end 
  row_index += 1 
end 
return result
end


# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
require 'pry'
def gross_for_director(director_data)
  total = 0
  inner_index = 0
  inner_len = director_data.length
  movies = director_data[:movies]
  while inner_index < movies.length do
    # binding.pry
    total += movies[inner_index][:worldwide_gross]
    inner_index += 1 
  end 
  return total 
end