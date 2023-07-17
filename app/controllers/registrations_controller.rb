class RegistrationsController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user.new = User.new(params[:user])
        if @user.save
            redirect_to root_path, notice: "Successfully created account"
        else
            render :new
        end
    end

    private

    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
    end
end

