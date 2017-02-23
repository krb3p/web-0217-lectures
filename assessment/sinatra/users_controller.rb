class UsersController < ApplicationController

  def new
    @user = User.new
  end

  get '/users/new' do
    erb :new
  end

  post '/users' do
    User.create(params)

  get '/index' do
    @users = User.all
  end

  get '/users/:id' do
    @user = User.find(params[:id])
    erb :show
  end

  get '/users/:id/edit' do
    @user = User.find(params[:id])
    erb :edit
  end

  patch '/users/:id' do
    @user = User.find(params[:id])
    @user.name = params[:name]
    @user.hometown = params[:hometown]
    @user.save
    # redirect somehow (not sure how)
  end

  post '/users/:id/delete' do
    @user = User.find(params[:id])
    erb :delete
  end

end


# Write the controller action as if this was a rails controller
# Write the url that sends a user to the action. I have done the first one for you.
