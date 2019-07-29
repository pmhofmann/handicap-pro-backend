class CoursesController < ApplicationController

    def index
        courses = Course.all 
        render json: courses
    end

    def show
        course = Course.where(["user_name=?",params[:id]]).first
        render json: course
    end

    def create
        byebug
        course = Course.create!(course_params)
        render json: course
    end

   

private

    def course_params
        params.require(:course).permit(
                    :name,
                    :county,
                    :url,
                holes:[:yardage, :hole_number, :par])
        end

    end