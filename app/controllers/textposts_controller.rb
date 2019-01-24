class TextpostsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy

  def create
    @textpost = current_user.textposts.build(textpost_params)
    if @textpost.save
      flash[:success] = "Micropost created!"
      redirect_to root_url
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
    @textpost.destroy
    flash[:success] = "Textpost deleted"
    redirect_to request.referrer || root_url
  end

  private

    def textpost_params
      params.require(:textpost).permit(:content, :picture)
    end

     def correct_user
      @textpost = current_user.textposts.find_by(id: params[:id])
      redirect_to root_url if @textpost.nil?
    end
  
end
