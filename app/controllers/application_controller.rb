class ApplicationController < ActionController::Base
	#protected
	def set_image
        if user_signed_in? then
        	
        @imag=Agent.find_by_email(current_user.email)
        if !@imag.nil? 
       @imag.image if @imag.image.present? 
       else ""
   		end
  			 
      end
    end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
