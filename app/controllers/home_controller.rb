class HomeController < ApplicationController
  def index
    render plain: "Welcome to the Home Page"
  end

  def get_name

  end
  def get_age 
    @age = rand(19..90)
    render "/home/age"
  end
end