class LoginController < ApplicationController
    def index
    end

    def create
        user = User.find_by(name: params[:name])
        if user.present? && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to root_path, notice: 'Successfully signed in account'
        else
            flash[:alert] = 'Invalid name or password'
            render :index, status: 422
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to root_path notice: "Logged out"
    end
  end
  