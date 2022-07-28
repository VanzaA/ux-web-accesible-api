class SessionController < ApplicationController
  def login
    if User.find_by(email: params[:email], password: params[:password])
      render json: { sucess: true }, status: :ok
    else
      render json: { sucess: false }, status: :unprocessable_entity
    end
  end
end
