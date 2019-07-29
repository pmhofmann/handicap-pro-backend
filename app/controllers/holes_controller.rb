class HolesController < ApplicationController

    def index
        holes = Hole.all 
        render json: holes
    end

    def show
        hole = Hole.where(["user_name=?",params[:id]]).first
        render json: hole
    end

    def create
        hole = Hole.create!(hole_params)
        render json: hole
    end

    def update
        hole.assign_attributes(hole_params)
        if hole.valid?
            hole.save
        end
        render json: hole
    end

private

    def hole_params
        params.require(:hole).permit(
                    :course_id,
                    :hole_number,
                    :yardage,
                    :par)
        end

    end