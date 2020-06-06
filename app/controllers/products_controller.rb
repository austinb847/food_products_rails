class ProductsController < ApplicationController
before_action :authorize, only: [:new, :edit, :destroy]
before_action :authorize_admin, only: [:new, :edit, :destroy]

def home
  @products = Product.three_recently_added
  @product_reviews = Product.most_reviews
  render :home
end
  
def index
  @products = Product.all
  if params[:search_name]
    @products = Product.search(params[:search_name].downcase)
  end
  if params[:us_products]
    @products = Product.us_made_products
  end
  render :index
end

def new
  @product = Product.new
  render :new
end

def create
  @product = Product.new(product_params)
  if @product.save
    redirect_to products_path
  else
    render :new
  end
end

def edit
  @product = Product.find(params[:id])
  render :edit
end

def show
  @product = Product.find(params[:id])
  render :show
end

def update
  @product = Product.find(params[:id])
  if @product.update(product_params)
    redirect_to products_path
  else
    render :edit
  end
end

def destroy
  @product = Product.find(params[:id])
  @product.destroy
  redirect_to products_path
end




private
  def product_params
    params.require(:product).permit(:name, :cost, :country_of_origin)
  end


end