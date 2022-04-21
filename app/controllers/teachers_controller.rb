class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all.sort_data(params).page(params[:page]).per(25)
  end
end
