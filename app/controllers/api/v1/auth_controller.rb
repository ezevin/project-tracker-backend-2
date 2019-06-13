class Api::V1::AuthController < ApplicationController

  def create
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password])
      token = issue_token({id: user.id})
      render json: {id: user.id, username: user.username, token: token}
    else
      render json: {error: "Could not authenticate"}, status: 401
    end
  end

  def show
    # token = request.headers['Authenticate']
    # decoded = JWT.decode(token, 'secret', true, {algorithm: 'HS256'})
    # id = decoded["id"]
    # user = User.find_by(id: id)

    if curr_user
      render json: {id: curr_user.id, username: curr_user.username}
    else
      render json: {error: "Could not authenticate"}, status: 401
    end
  end

end
