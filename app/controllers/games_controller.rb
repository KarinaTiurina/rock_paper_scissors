class GamesController < ApplicationController
  before_action :set_game

  def new
  end

  def show
    @player_choice = params[:id].to_i
    @computer_choice = rand(3)
    @winner = determine_the_winner(@player_choice, @computer_choice)
  end

  def set_game
    @game = ['rock', 'scissors', 'paper']
  end

  def determine_the_winner(first_player, second_player)
    first_player = first_player.to_i

    second_player = second_player.to_i

    if first_player == second_player
      return :draw
    end

    if first_player == 0 && second_player == 1 ||
      first_player == 1 && second_player == 2 ||
      first_player == 2 && second_player == 0
      return :player
    else
      return :computer
    end
  end
end
