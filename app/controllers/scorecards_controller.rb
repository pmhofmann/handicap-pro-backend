class ScorecardsController < ApplicationController

    def index
        scorecards = Scorecard.all 
        render json: scorecards
    end

    def show
        scorecard = Scorecard.where(["user_name=?",params[:id]]).first
        render json: scorecard
    end

    def create
        scorecard = Scorecard.create!(scorecard_params)
        render json: scorecard
    end

    

private

    def scorecard_params
        params.require(:scorecard).permit(
                    :course_id,
                    :player_id,
                    :score,
                    :date_played)
        end

    end