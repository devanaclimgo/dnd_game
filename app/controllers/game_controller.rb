class GameController < ApplicationController
  before_action :load_character, except: [:new]
end
