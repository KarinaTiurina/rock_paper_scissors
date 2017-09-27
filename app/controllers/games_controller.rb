class GamesController < ApplicationController
  before_action :set_game

  def new
  end

  def show
    @player_choice = params[:id].to_i
    @computer_choice = rand(3)
    @winner = winner
  end

  def set_game
    @game = ['rock', 'scissors', 'paper']
  end

  def winner
    result = determine_the_winner(@player_choice, @computer_choice)
    if result == 1
      :player
    elsif result == 2
      :computer
    else
      :draw
    end
  end

  def determine_the_winner(first_player, second_player)
  if first_player == nil || !first_player.is_a?(Numeric)
    first_player = 0
  end

  if second_player == nil || !second_player.is_a?(Numeric)
    second_player = 0
  end

  if first_player == second_player
    return 0
  end

  if first_player == 0 && second_player == 1 ||
    first_player == 1 && second_player == 2 ||
    first_player == 2 && second_player == 0
    return 1
  else
    return 2
  end
end
end
