require 'test_helper'


class ReviewTest < ActiveSupport::TestCase
  
  def setup 
    @chef = Chef.create(chefname:"bob", email:"bob@dong.com")
    @recipe = @chef.recipes.build(name:"chicken parm", summary:"this is the best chicken parm recipe ever",
              description:"heat-oil, add onions, add tomato sauce, cook for 20 minutes")
              
  end
  
end