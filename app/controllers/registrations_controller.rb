class RegistrationsController < ApplicationController
    def new
        @user = User.new
    end
    def create
     
        @user = User.new(user_params)

        if @user.save
            session[:user_id] = @user.id
            redirect_to root_path, notice: "success in creating account"
        else
            # flash(:alert) = "not created"   
            render :new
        end
    end
private
def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
end

end