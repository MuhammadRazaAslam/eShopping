class SellerPanelDashboard::SellerPanelDashboardFrontendPagesController < ApplicationController

	def add_product		
	end

	def view_products
		buyer_id = session[:current_user_id]
		@product = Product.where("buyers_id = '#{buyer_id}'")
	end

end
