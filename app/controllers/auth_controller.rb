require 'jwt'
class AuthController < ApplicationController

    def create
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            payload = { user_id: user.id }
            token = JWT.encode(payload, 'S3k3R3T', 'HS256')
            render json: { id: user.id, username: user.username, token: token }
        else 
            render json: { error: 'Invalid username or password' }
        end
    end


    def show
        token = request.headers[:Authorization].split(' ')[1]
        decoded_token = JWT.decode(token, 'S3k3R3T', true, { algorithm: 'HS256'} )
        user_id = decoded_token[0]['user_id']
        user = User.find(user_id)
        if user
            render json: { 
            id: user.id,
            username: user.username,
            token: token
        }
        else
            render json: { error: 'Invalid Token'}
        end
    end

end