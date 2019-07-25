class AuthController < ApplicationController
    def create
      
      player = Player.find_by(email: params[:email])
      if player && player.authenticate(params[:password])
        payload = {player_id: player.id}
        token = issue_token(payload)
        render json: { jwt: token, player: player }
      else
        render json: { error: "The token couldn't be created. Login failed."}
      end
    end
  
    def show
      if logged_in
        render json: current_player
      else 
        render json: {error: "Incorrect token."}
      end
    end
  end
  