module Concerns::Findable

  def self.find_by_name(name)
    all.detect {|element| element.name }
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create(name)
  end

end
