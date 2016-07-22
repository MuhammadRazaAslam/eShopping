class AdminController < ApplicationController

	def new
		@admin = Admin.new(params_admin)
		@admin.save
		redirect_to "/admin_panel_dashboard/admin_panel_dashboard_frontend_pages/users"
	end

	def edit
		@admin =Admin.find(params[:id])	
	end

	def update
		
	end

	def destroy
		@admin = Admin.find(params[:id])
		@admin.destroy
		render "/admin_panel_dashboard/admin_panel_dashboard_frontend_pages/users"
	end

	def params_admin
		params.require(:sign_up).permit(:first_name, :last_name, :email, :password)
	end
end
