class SubcategoryController < ApplicationController
    
    attr_accessor :categories_id
	def index
    	@subcategory = Subcategory.all
    end

    
	
	def new
		@subcategory = Subcategory.new
		@subcategory = Subcategory.new(params_subcategory)
		@subcategory.categories_id = params[:category_id].to_i 
		if @subcategory.save
		#	redirect_to @subcategory
	#	end
		redirect_to '/admin_panel_dashboard/admin_panel_dashboard_frontend_pages/categories_subcategories'
		end
	end
    
	def create
	#	byebug
	end
	
	def edit	
	end

	def destroy
		@subcategory = Subcategory.find(params[:id])
		@subcategory.destroy
		redirect_to '/admin_panel_dashboard/admin_panel_dashboard_frontend_pages/categories_subcategories'
	end

	private
	def params_subcategory
		params.require(:subcat).permit(:subcategory_name)
		
	end

end
