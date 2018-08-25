class Show < ActiveRecord::Base 
  
  def highest_rating
    Show.maximum(:rating)
  end
  
  def most_popular_show
    Show.find_by(rating: #{highest_rating})
  end
  
  def lowest_rating
    Show.minimum(:rating)
  end
  
  def most_popular_show
    Show.find_by(rating: #{highest_rating})
  end
  
end