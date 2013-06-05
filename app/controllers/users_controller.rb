# a controller makes instance variables FROM the model, to be used in the view

class UsersController < ApplicationController
  def new
  	@user = User.new 
  end

  def show
  	@user = User.find(params[:id]) #magically finds user by its id (which each user is given upon creation)
  end

  def create
    @user = User.new(params[:user]) # clarify :user
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end
end

# @user = User.new(params[:user])

# is equivalent to:

# @user = User.new(name: "Foo Bar", email: "foo@invalid", password: "foo", password_confirmation: "bar") - the thing we signed up with
