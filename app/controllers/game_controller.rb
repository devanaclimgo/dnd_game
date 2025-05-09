class GameController < ApplicationController
  before_action :load_character, except: [:new]

  def new
    @character = Character.new
  end

  def show
    @scenario = Scenario.includes(:actions).order("RANDOM()").first
    @items = @character.items
    session[:current_scenario] = @scenario.includes
  end
end
