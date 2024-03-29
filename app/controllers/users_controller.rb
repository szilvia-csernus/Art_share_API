class UsersController < ApplicationController
    def index
        unless params[:username].blank?
            name = params[:username]
            name = "%#{name}%"
            render json: User.where("username LIKE ?", name)
        else
            render json: User.all
        end
    end

    def create
        user = User.new(user_params)
        if user.save
            render json: user
        else
            render json: user.errors.full_messages, status: :unprocessable_entity
        end
    end

    def show
        render json: User.find(params[:id])
    end

    def update
        user = User.find(params[:id])
        if user.update(user_params)
            render json: user
        else
            render json: user.errors.full_messages, status: :unprocessable_entity
        end
    end

    def destroy
        user = User.find(params[:id])
        if user.destroy
            render json: user 
        else
            render json: "Can't destroy user record. Too important."
        end
    end

    private

    def user_params
        params.require(:user).permit(:username)
    end
end