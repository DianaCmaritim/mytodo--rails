class UsersController < ApplicationController
    def index
        render json: {data: User.all}
    end
    def create
        user = User.create(user_params)
        Cookies[:email] = user.email
        render json: { data: user, message: 'User created successfully'}
    end
    def update
        id = params[:id].to_i
        user = User.find(id)
        user.update(user_params)
        render json: {message: 'User updated successfully'}
    end
    # TODO: delete
    private
    def user_params
        params.permit(:email, :password)
    end
end
