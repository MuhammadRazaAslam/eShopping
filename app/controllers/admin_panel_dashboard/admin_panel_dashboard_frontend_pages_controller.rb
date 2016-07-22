class AdminPanelDashboard::AdminPanelDashboardFrontendPagesController < ApplicationController

	def header_categories
		@category = Category.all
	end

	def categories_subcategories
		@category = Category.all
		@subcategory = Subcategory.new
	end

	def brands
		@category = Category.all
	end

	def user
		
	end

	def slider_display_pics
		
	end

end
