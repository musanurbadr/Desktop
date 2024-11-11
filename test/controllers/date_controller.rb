class DataController < ApplicationController
  before_action :check_name_param, only: ['say_welcome']
  after_action :finished_processing_request
  def index
  end

  def seaech 
    puts params[:query]
    render plain: "Bilgiler alindi "
  end
  def say_welcome
    render plain:"Welcome #{params[:name]}"
  end
  def display
    @user = User.find(1)
    @divisions = Division.all
  end
  def check_name_param
    puts "Checking the name #{params[:name]}============================="
  end

  def finished_processing_request
        puts "Finishined Processing Requt ========================"
  end

end

