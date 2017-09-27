module ApplicationHelper
  def end_of_name(winner, person)
    if winner == :draw
      '_draw'
    elsif winner == person
      '_won'
    else
      '_fail'
    end
  end
end
