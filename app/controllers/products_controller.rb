class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show edit update destroy ]

  def t
    @product = Product.last
  end
  
  # GET /products or /products.json
  def index
    @product = Product.new
    @products = if params[:search]
      Product.where('name LIKE ?', "%#{params[:search]}%")
    else
      Product.all
    end
  
    if params[:sort_by].present? && params[:order].present?
      if params[:category].present?
        order = params[:order] == 'asc' ? 'asc' : 'desc'
        @products = @products.where(category: params[:category]).order(name: order)
      else
        @products = @products.order(params[:sort_by] => params[:order])
      end
    end
  
    # @visible_values = Product.pluck(:visible).uniq
  
    # if params[:visible].present?
    #   selected_visible = params[:visible]
    #   @products = @products.where(visible: selected_visible)
    # end

  end

  # GET /products/1 or /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
    @products = Product.all
  end

  # Product /products or /products.json
  def create
    @product = Product.new(product_params)

    # Parse the variants JSON string back into a Ruby object
    if params[:product][:variants].present?
      variants_data = JSON.parse(params[:product][:variants])
      @product.variants = variants_data
    end

    respond_to do |format|
      if @product.save
        #format.html { redirect_to product_url(@product), notice: "Product was successfully created." }
        format.html { redirect_to index, notice: "Product was successfully created." }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1 or /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to product_url(@product), notice: "Product was successfully updated." }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1 or /products/1.json
  def destroy
    @product.destroy!

    respond_to do |format|
      format.html { redirect_to products_url, notice: "Product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:name, :handle, :price, :brand, :category, :desc, :image, :options, :variants)
    end
end
