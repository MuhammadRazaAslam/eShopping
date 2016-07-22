class SellerController < ApplicationController

	def new
		@seller = Seller.new(params_buyer_sign_up)
		@seller.save
	end

	def destroy
		@seller = Seller.find(params[:id])
		@seller.destroy
		redirect_to '/admin_panel_dashboard/admin_panel_dashboard_frontend_pages/users'
	end

	def params_buyer_sign_up
		params.require(:seller_sign_up).permit(:store_name, :email, :password, :first_name, :last_name, :country, :province, :city, :phone_no, :address_1, :address_2, :logo)
	end

end
