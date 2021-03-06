class Category < BaseModel
  validates_presence_of :name
  validates_length_of :name, :maximum => 50

  def readonly?
    true
  end
end
