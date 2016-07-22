class CategoryController < ApplicationController


	def index
    	@category = Category.all
    end
	
	def show
		
	end

	def new
		@category = Category.new
	end

	def create
		@category = Category.new(params_category)
		if @category.save
			rediect_to @category
		else
			render 'new'
		end 
	end

    
    def edit
    	@category = Category.find(params[:id])
    end

    def update
       @category = Category.find(params[:id])
       if @category.update(category_params)
       		render 'new'
       	else
       		render 'edit'
       	end	
    end

    private
    def params_category
    	params.require(:cat).permit(:category_name)
    end

end
