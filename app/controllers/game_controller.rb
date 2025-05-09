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

  def update
    action = Action.find(params[:action_id])
    roll = rand(1..20) + item_bonus
    success = roll >= action.difficulty

    if success
      handle_success(action)
    else
      handle_failure(action)
    end

    redirect_to game_over_path unless @character.alive
  end
end
