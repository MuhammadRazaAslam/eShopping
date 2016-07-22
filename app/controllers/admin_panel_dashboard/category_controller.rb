class AdminPanelDashboard::CategoryController < ApplicationController

	def new
		@category = Category.new
	end

	def create
		@category = Category.new(category_params)
		if @category.save
			render 'new'
		end 
	end

    def index
    	@category = Category.all
    end

    def edit
    	@category = Category.find(params[:id])
    end

    def update
       @category = Category.find(params['format'])
       @category.update(params.require(:cat).permit(:category_name))
       render 'new'	
    end

    private
    def category_params
    	params.require(:cat).permit(:category_name)
    end
end
