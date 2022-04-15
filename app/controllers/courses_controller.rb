class CoursesController < ApplicationController
  before_action :get_course, only: [:show]

  def index
    @courses = Course.all
  end

  def show
  end

  private
    def get_course
      @course = Course.find_by_id(params[:id])
      if @course.present?
        @course
      else
        flash[:danger] = "Could not found this course"
        redirect_to courses_path
      end
    end
end