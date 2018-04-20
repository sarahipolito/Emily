class StaticPagesController < ApplicationController
 
def home 
@categories = Category.all

end 

def about 
end 

def gallery 
end 

def category
catName = params[:title]

@items = Item.where("category like ?", catName)

# the sql for this would look like SELECT *FROM items WHERE category LIKE catName
end



end

