module ApplicationHelper
	def set_image
        if user_signed_in? then
        	
        @imag=Agent.find_by_email(current_user.email)
        if !@imag.nil? 
       @imag.image if @imag.image.present? 
       else ""
   		end
  			 
      end
    end
	
end
