class PlayersController < ApplicationController

    def index
        players = Player.all 
        render json: players
    end

    def show
        player = Player.where(["id=?",params[:id]]).first
        render json: player
    end

    def create
        player = Player.create!(player_params)
        render json: player
    end

    def update
        player = Player.find(params[:id])
        
       player.assign_attributes(player_params)
        if player.valid?
            player.save
        end
        render json: player
    end

private

    def player_params
        params.require(:player).permit(
                    :name,
                    :email,
                    :hcp,
                    :password)
        end

    end