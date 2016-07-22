class BuyerController < ApplicationController
	
	def index
		@buyer = Buyer.all
		redirect_to '/admin_panel_dashboard/admin_panel_dashboard_frontend_pages/users'
	end

	def show
			
	end
	
	def new
		@buyer = Buyer.new(params_buyer_sign_up)
		@buyer.save
	end

	def create
	end

	def destroy
		@buyer = Buyer.find(params[:id])
		@buyer.destroy
		redirect_to '/admin_panel_dashboard/admin_panel_dashboard_frontend_pages/users'
	end
	
	def params_buyer_sign_up
		params.require(:sign_up).permit(:first_name, :last_name, :email, :password, :phone_no)
	end
end
