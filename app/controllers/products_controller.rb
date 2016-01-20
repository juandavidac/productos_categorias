class ProductsController < ApplicationController
  def index
    @products=Product.all
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path, notice: "El producto fue publicado con éxito"
    else
      render :new
    end
  end

  def new
    @product=Product.new
  end

  def edit
    @product=Product.find(params[:id])
  end

  def update
   @product = Product.find(params[:id])
   if @product.update(product_params)
     redirect_to products_path, notice: "El producto ha sido modificado con éxito"
   else
     render :edit
   end
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy

    redirect_to products_path, notice: "El producto fue eliminado con éxito"
  end

  def show
  end

  private
  def product_params
    params.require(:product).permit(:name, :price).tap do |whitelisted|
    whitelisted[:category_ids] = params[:product][:category_ids]
    end
  end
end
