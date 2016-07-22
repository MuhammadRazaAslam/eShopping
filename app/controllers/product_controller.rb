class ProductController < ApplicationController

	def index
	  @product = Product.all
	end

	def new
		@product = Product.new(params_product)
		if @product.save
			redirect_to '/seller_panel_dashboard/seller_panel_dashboard_frontend_pages/add_product'
		end
	end

	def destroy
		@product = Product.find(params[:id])
		if @product
			@product.destroy
			redirect_to '/seller_panel_dashboard/seller_panel_dashboard_frontend_pages/view_products'
		end
	end

	private
	def params_product
		params.require(:addProduct).permit(:buyers_id, :subcategories_id, :product_name, :product_price, :quantity, :item_condition, :pic_1, :pic_2, :pic_3, :pic_4, :demo_video)
	end


end
