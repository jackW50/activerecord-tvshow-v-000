class Show < ActiveRecord::Base 
  
  def self.highest_rating
    self.maximum(:rating)
  end 
  
  def self.most_popular_show
    self.find_by(rating: highest_rating)
  end 
  
  def self.lowest_rating
    self.minimum(:rating)
  end 
  
  def self.least_popular_show
    self.find_by(rating: lowest_rating)
  end 
  
  def self.ratings_sum
    self.sum(:rating)
  end 
  
  def self.popular_shows
    #"SELECT * FROM shows WHERE rating > ?", 5
    self.where("rating > ?", 5)
  end 
  
  def self.shows_by_alphabetical_order
    #'SELECT * FROM shows ORDER BY("name")'
    self.order(:name)
  end 
end 