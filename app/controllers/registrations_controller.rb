class RegistrationsController < ApplicationController
    def new
        @user = User.new
    end

    def create
        render plain: 'Thank you signing up!'
    end
end

