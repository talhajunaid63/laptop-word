class ProductsController < InheritedResources::Base
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  

  def edit
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)

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
  end

  def update
    @product = Product.find(params[:id])

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
      params.require(:product).permit(:title, :description, :price, images: [])
    end

