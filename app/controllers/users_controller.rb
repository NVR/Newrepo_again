class UsersController < ApplicationController
  def show
  @user = User.find(params[:id])
  @title = @user.name 
  end
  def create
  
  
	
    @user= User.new(params[:user])
	if @user.save
	sign_in @user
	redirect_to @user , :flash => {:success=>"Welcome!"}
	else
	 render 'new'
	 @title="Sign up"
	 end
  end
  
  def new
  @user= User.new
  
  @title="Sign up"
  end
  def edit
 @user = User.find(params[:id])
@title ="Edit user"
end
def update
 @user = User.find(params[:id])
 if @user.update_attributes(params[:user])
 redirect_to @user , :flash => {:success => "Profile updated"}
 else
@title ="Edit user"
render 'edit'
end

end
  
end