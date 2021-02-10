module Api::V1
    class UsersController < ApplicationController
      # get all user data 
      def index
        @users = User.all
        render json: @users
      end
  
      def show
        @users = User.find(params[:id])
        render json: @users
      end
  
      def create
        @users = User.new(user_params)
        Rails.logger.info(user_params)
        if @users.save
          render json: @users, status: :created
        else
          render json: @users.errors, status: :unprocessable_entity
        end
      end
  
      def update
        @users = User.find(params[:id])
        if @users.update(user_params)
          render json: @users
        else
          render json: @users.errors, status: :unprocessable_entity
        end
      end
  
      def destroy
        @users = User.find(params[:id])
        @users.destroy
      end
      ###############################################################
      private
  
      def user_params
        params
            .require(:user)
            .permit(:full_name, :email, :password)
      end
    end
  end