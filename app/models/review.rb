class Review < ActiveRecord::Base
  
  belongs_to :recipe 
  belongs_to :chef
  
  validates :title, length: {minimum:0,maximum:20}
  validates :review, presence:true,
                     length: {minimum:5, maximum:150}
  
end