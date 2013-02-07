class Array
  def all_equal?
    self.uniq.length == 1
  end
  def all_equal_and_present?
    a = self.uniq
    a.length == 1 && a.first.present?
  end
end
