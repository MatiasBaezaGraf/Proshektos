class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

	protected

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:signup, keys: [:first_name, :last_name, :adress, :card_type, :card_number])
	end
end
