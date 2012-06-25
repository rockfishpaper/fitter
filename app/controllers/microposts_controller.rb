class MicropostsController < ApplicationController
  # Note that we have not restricted the actions the before filter applies to
  # since it applies to all by default.  If we are to add, a new action accessible
  # even to non-signed-in users, we would need to specify teh protected actions 
  
  before_filter :signed_in_user, only: [:create, :destroy]
  before_filter :correct_user, only: :destroy
  
  def create
    @micropost = current_user.microposts.build(params[:micropost])
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to root_path
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end
  
  def destroy
    @micropost.destroy
    redirect_to root_path
  end
  
  private
    def correct_user
      @micropost = current_user.microposts.find_by_id(params[:id])
      redirect_to root_path if @micropost.nil?
    end
end