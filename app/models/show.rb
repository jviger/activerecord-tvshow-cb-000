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
  
  def least_popular_show
    Show.find_by(rating: #{lowest_rating})
  end
  
  def popular_shows
    Show.where("rating > 5")
  end
  
  def shows_by_alphabetical_order
    Show.order(names: :asc)
  end
  
end