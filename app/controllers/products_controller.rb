class ProductsController < ApplicationController
  
def index
  @products = Product.all
  render :index
end

def new
  render :new
end









end