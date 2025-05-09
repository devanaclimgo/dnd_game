class GameController < ApplicationController
  before_action :load_character, except: [:new]

  def new
    @character = Character.new
  end
end
