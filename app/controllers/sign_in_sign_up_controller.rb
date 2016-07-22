class SignInSignUpController < ApplicationController

	def user_sign_in_sign_up
		
	end
	
	def user_sign_in
		
	end
    
	def buyer_sign_up
		
	end
    
    def seller_business_account_sign_up
	
	end

	def signed_in
		h=params[:sign_in]
		admin = Admin.where("email='#{h["email"]}' and password='#{h["password"]}'")
		seller = Seller.where("email='#{h["email"]}' and password='#{h["password"]}'")
		buyer = Buyer.where("email='#{h["email"]}' and password='#{h["password"]}'")
		id = 0
		if !admin.blank?
			admin.each{|a| id=a[:id]}
			session[:current_user_id] = id
			redirect_to '/admin_panel_dashboard/admin_panel_dashboard_frontend_pages/header_categories'
		elsif !seller.blank?
			seller.each{|s| id=s[:id]}
			session[:current_user_id] = id
			redirect_to '/seller_panel_dashboard/seller_panel_dashboard_frontend_pages/add_product'
		elsif !buyer.blank?
			buyer.each{|b| id=b[:id]}
			session[:current_user_id] = id
			redirect_to root_path
			return
		else
		redirect_to root_path
		return
		end
	end

	private
	def params_sign_in
		params.require(:sign_in).permit(:email, :password)
	end
	

end
