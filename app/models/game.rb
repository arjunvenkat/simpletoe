class Game < ActiveRecord::Base
  attr_accessible :name


  has_many :boxes

  def check_win
    statuses = self.boxes.sort.collect { |box| box.status }
    if [statuses[0], statuses[1], statuses[2]].all_equal_and_present?
      return statuses[0]
    elsif [statuses[3], statuses[4], statuses[5]].all_equal_and_present?
      return statuses[3]
    elsif [statuses[6], statuses[7], statuses[8]].all_equal_and_present?
      return statuses[6]
    elsif [statuses[0], statuses[3], statuses[6]].all_equal_and_present?
      return statuses[0]
    elsif [statuses[1], statuses[4], statuses[7]].all_equal_and_present?
      return statuses[1]
    elsif [statuses[2], statuses[5], statuses[8]].all_equal_and_present?
      return statuses[2]
    elsif [statuses[0], statuses[4], statuses[8]].all_equal_and_present?
      return statuses[0]
    elsif [statuses[2], statuses[4], statuses[6]].all_equal_and_present?
      return statuses[2]
    elsif statuses.exclude? nil
      return "cats_game"
    end
  end

end
