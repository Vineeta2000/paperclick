class WelcomeController < ApplicationController
  def index
    # byebug
    if current_user.role? == "Admin"
     @user = User.all
     @posts = Post.all
   else
    @posts = Post.all
   end
  end
end
