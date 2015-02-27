class CardsetSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_many :cards, include: true
end
