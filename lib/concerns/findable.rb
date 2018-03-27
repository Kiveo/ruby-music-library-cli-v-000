module Concerns::Findable

  def find_by_name(name)
    all.detect {|element| element.name }
  end

  def find_or_create_by_name(name)
    self.find_by_name(name) || self.create(name)
  end

end
