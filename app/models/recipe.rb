class Recipe < ActiveRecord::Base
  validates :name, presence: true,
                   length: {maximum:100,minimum:5}
                   
  validates :summary, presence: true,
                      length: {minimum:10, maximum:150}
                      
  validates :description, presence: true,
                          length: {minimum: 20, maximum:500}
              
end