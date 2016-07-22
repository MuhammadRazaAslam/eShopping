class BrandController < ApplicationController

	def index
    	@brand = Brand.all
    end

	def new
		@brand = Brand.new(params_brand)
		@brand.categories_id = params[:category_id].to_i 
		if @brand.save
		#	redirect_to @subcategory
	#	end
		redirect_to '/admin_panel_dashboard/admin_panel_dashboard_frontend_pages/brands'
		end
	end
    
	def create
	#	byebug
	end
	
	def edit	
	end

	def destroy
		@brand = Brand.find(params[:id])
		@brand.destroy
		redirect_to '/admin_panel_dashboard/admin_panel_dashboard_frontend_pages/brands'
	end

	private
	def params_brand
		params.require(:bra).permit(:brand_name)
		
	end

end
