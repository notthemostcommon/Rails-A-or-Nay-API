# require_relative "../auth/authenticate_user.rb"
class UsersController < ApplicationController
    skip_before_action :authenticate_request, only: [:login, :register]

    # POST /register
    def register
        @user = User.new(user_params)
        if @user.save
            response = { message: 'User created successfully'}
            render json: response, status: :created 
        else
            render json: @user.errors, status: :bad
        end 
    end

    def login
        authenticate(params[:email], params[:password])
    end

    def test
    render json: {
            message: 'You have passed authentication and authorization test'
        }
    end

    private

    def user_params
        params.permit(
        :f_name, 
        :l_name,
        :email,
        :password
        )
    end
    

    def authenticate(email, password)
        command = AuthenticateUser.call(email, password)
        if command.success?
          render json: {
            access_token: command.result,
            message: 'Login Successful'
          }
        else
          render json: { error: command.errors }, status: :unauthorized
        end
    end
end
