class CartController < ApplicationController
def add 
    # get id of gallery
    id = params[:id]
  
    #if cart session is already working created use existing session
  
    if session[:cart] then 
      cart = session [:cart]
    else
      session[:cart] = {}
      cart = session[:cart]
    end
  
      
      # check if the is already in cart if so increment by
      
  
    if cart[id] then
      cart[id] = cart[id] + 1
      else
        cart[id] = 1
    end
  
  redirect_to :action => :index
  
  end 
 
 
 def clearCart
  # clear cart and remove all items
  session[:cart] = nil
  redirect_to :action => :items
 end
 
  
  
  
  def index
  
  # pass the cart information to the index view
  if session[:cart] then
    @cart = session[:cart]
  else
    @cart = {}
  end

  end


  def remove
  
  id = params[:id]
  cart = session[:cart]
  cart.delete id
  
  redirect_to :action => :index
  end




end

  
