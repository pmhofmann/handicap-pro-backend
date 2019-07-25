class PlayersController < ApplicationController

    def index
        players = Player.all 
        render json: players
    end

    def show
        user = User.where(["user_name=?",params[:id]]).first
        render json: user
    end

    def create
        player = Player.create!(player_params)
        render json: player
    end

    def update
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
                    :handicap,
                    :password)
        end

    end