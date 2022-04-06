class ProductsController < ApplicationController
  def index

    @products = current_user.Buyer? ? Product.all : current_user.products
    

  end

  def show
    @product = Product.find(params[:id])
  end


  def new
    @product = Product.new
    authorize @product
  end

  def create

    @product = current_user.products.create(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
      
      else
        format.html { render action: "new" }
        
      end
    end
  end

  def edit
    @product = Product.find(params[:id])
    authorize @product
  end

  def update
    @product = Product.find(params[:id])
      authorize @product
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        
      else
        format.html { render action: "edit" }
      
      end
    end
  end

   def destroy
    @product = Product.find(params[:id])
    @product.destroy

    respond_to do |format|
      format.html { redirect_to products_url }
      
    end
  end
end

  private

    def product_params
      params.require(:product).permit(:user_id, :title, :description, :price, images: [])
    end

