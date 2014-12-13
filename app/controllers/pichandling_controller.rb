class PichandlingController < ApplicationController
  def set
  	@u=User.find(current_user.id)
  	@p=Product.all
  end

  def edit
  end
  def update
@avat = params
#User.save
redirect_to pichandling_edit_path
 end
  def delete
  end

end
