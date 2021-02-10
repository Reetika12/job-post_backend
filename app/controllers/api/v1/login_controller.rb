module Api::V1
    class LoginController < ApplicationController
        def validate
            params.require([:email, :password])
            params.permit(:email, :password)
            user = User.find_by(email: params[:email])
            unless user.present? 
              return render json: {message: 'user not found'}, status: :not_found
            end
            if user.password == params[:password]
              return render json: user
            else 
              return render json: nil, status: :bad_request
            end
            
        end
        

    end
end