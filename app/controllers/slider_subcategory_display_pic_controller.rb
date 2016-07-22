class SliderSubcategoryDisplayPicController < ApplicationController

	def new
		@display_pics = SliderSubcategoryDisplayPic.new
	end
	
	def save
		@display_pics = SliderSubcategoryDisplayPic.new(params_display_pics)
		@display_pics.save
		redirect_to '/slider_subcategory_display_pic/new'
	end
	def create
	end
	
	def index
		@display_pics = SliderSubcategoryDisplayPic.all
	end
	
	def show
		
	end

	def params_display_pics
		params.require(:display_pics).permit(:pic, :page_name)
	end

end
