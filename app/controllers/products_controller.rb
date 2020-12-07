class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  PRODUCTS_PER_PAGE = 50
  def index
        
    if params[:search]#search by brand name in the Nav bar
      @products = Product.where("brand ILIKE ?", "%#{params[:search]}%") 
    else 
       @page = params.fetch(:page, 1).to_i
    @products = 
      case params[:filter_by_category]
      when "babycare"
        Product.where("category_code LIKE 'BC%'")
      when "bags"
        Product.where("category_code LIKE 'BWB%'")
      when "computers"
        Product.where("category_code LIKE 'CO%'")
      when "furniture"
        Product.where("category_code LIKE 'FUR%'")
      when "kitchen"
        Product.where("category_code LIKE 'KDI%'")
      when "sports"
        Product.where("category_code LIKE 'SPF%'")
      when "watches"
        Product.where("category_code LIKE 'WAT%'")
      else 
      Product.offset([0, @page * PRODUCTS_PER_PAGE].max).limit(PRODUCTS_PER_PAGE)
      end 
    end
 
  end 

  # GET /products/1
  # GET /products/1.json
  def show

  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def categories
    @babycare = Product.where("category_code LIKE 'BC%'")
    @bags = Product.where("category_code LIKE 'BWB%'")
    @computers = Product.where("category_code LIKE 'CO%'")
    @furniture = Product.where("category_code LIKE 'FUR%'")
    @kitchen = Product.where("category_code LIKE 'KDI%'")
    @sports = Product.where("category_code LIKE 'SPF%'")
    @watches = Product.where("category_code LIKE 'WAT%'")
  end     

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:name, :description, :price)
    end
end
