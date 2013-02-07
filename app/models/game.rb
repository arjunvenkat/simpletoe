class Game < ActiveRecord::Base
  # attr_accessible :title, :body

  has_many :boxes

  def check_win
    boxes = self.boxes.sort
    if [boxes[0].status, boxes[1].status, boxes[2].status].all_equal_and_present?
      return boxes[0].status
    elsif [boxes[3].status, boxes[4].status, boxes[5].status].all_equal_and_present?
      return boxes[3].status
    elsif [boxes[6].status, boxes[7].status, boxes[8].status].all_equal_and_present?
      return boxes[6].status
    elsif [boxes[0].status, boxes[3].status, boxes[6].status].all_equal_and_present?
      return boxes[0].status
    elsif [boxes[1].status, boxes[4].status, boxes[7].status].all_equal_and_present?
      return boxes[1].status
    elsif [boxes[2].status, boxes[5].status, boxes[8].status].all_equal_and_present?
      return boxes[2].status
    elsif [boxes[0].status, boxes[4].status, boxes[8].status].all_equal_and_present?
      return boxes[0].status
    elsif [boxes[2].status, boxes[4].status, boxes[6].status].all_equal_and_present?
      return boxes[2].status
    else
      return nil
    end
  end

end
