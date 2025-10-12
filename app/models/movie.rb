class Movie < ActiveRecord::Base
  #### Part 1 ####
  # implement this method. Remeber to exclude [self]
  # (the current movie) from your return value
  def others_by_same_director
    return [] if director.nil? || director.strip.empty?
    Movie.where(director: director).where.not(id: id)
  end
end
