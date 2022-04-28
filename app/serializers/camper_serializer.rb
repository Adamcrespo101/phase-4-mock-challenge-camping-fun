class CamperSerializer < ActiveModel::Serializer
  attributes :id, :name, :age
  has_many :activities, include: [:name, :difficulty]

end
